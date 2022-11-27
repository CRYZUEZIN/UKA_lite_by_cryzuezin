#!/system/bin/sh

#PATH
ajax=`pwd`
uka=`pwd`
#BIN
bin=$uka/bin/arm
bb=$bin/busybox
tmp=$uka/bin/tmp
pybin=$uka/bin/python
editor=$uka/editor
debloat=$uka/bin/debloat
contexts=$uka/bin/contexts
config=$uka/bin/config
phh=$uka/bin/phh

echo "- Detected Model: Google (erofs)"
echo " "

echo "- Extracting the Images from payload.bin.."
$bin/payload-dumper -c 8 -o $tmp $ajax/google.bin
echo " "

echo "- Extracting the Images (erofs).."
echo " "
if [ -f $tmp/system.img ]; then

cp -frp $uka/bin/unpack/erofs_unpack.sh $tmp
sh $tmp/erofs_unpack.sh

fi
echo -en "\E[37;1m"
echo " "

full_avb=$($bin/avbtool info_image --image $tmp/system.img 2> $tmp/config/system_avb.log)
echo $full_avb > $tmp/config/system_avb.img
rm -rf $tmp/config/system_avb.img
rm -rf $tmp/system.img
sed -i "s+system/system/product 0 0 0644 /product+system/product 0 0 0644 /system/product+" $tmp/config/system_fs_config
sed -i "s+system/product 0 0 0755+system/system/product 0 0 0755+" $tmp/config/system_fs_config
sed -i "s+system/system/system_ext 0 0 0644 /system_ext+system/system_ext 0 0 0644 /system/system_ext+" $tmp/config/system_fs_config
sed -i "s+system/system_ext 0 0 0755+system/system/system_ext 0 0 0755+" $tmp/config/system_fs_config
rm -rf $tmp/system/cache && cd $tmp/system && mkdir cache
sed -i "s+cache 0 0 0644 /data/cache+cache 1000 2001 0770+" $tmp/config/system_fs_config
sed -i "s+system/system/bin 0 0 0755+system/system/bin 0 2000 0751+" $tmp/config/system_fs_config
sed -i "s+system/system/bin/uncrypt 0 0 0755+system/system/bin/uncrypt 0 2000 0755+" $tmp/config/system_fs_config
sed -i "s+system/system/bin/simpleperf_app_runner 0 2000 0755+system/system/bin/simpleperf_app_runner 0 2000 0750 capabilities=0xc0+" $tmp/config/system_fs_config
rm -rf $tmp/system/system/product
rm -rf $tmp/system/system/system_ext
rm -rf $tmp/system/product
rm -rf $tmp/system/system_ext
rm -rf $tmp/system/system/lib/vndk-30
rm -rf $tmp/system/system/lib/vndk-sp-30
rm -rf $tmp/system/system/lib/vndk-31
rm -rf $tmp/system/system/lib/vndk-sp-31
rm -rf $tmp/system/system/lib/vndk-32
rm -rf $tmp/system/system/lib/vndk-sp-32
rm -rf $tmp/system/system/lib64/vndk-30
rm -rf $tmp/system/system/lib64/vndk-sp-30
rm -rf $tmp/system/system/lib64/vndk-31
rm -rf $tmp/system/system/lib64/vndk-sp-31
rm -rf $tmp/system/system/lib64/vndk-32
rm -rf $tmp/system/system/lib64/vndk-sp-32
ln -s /system/product $tmp/system
ln -s /system/system_ext $tmp/system
cd $tmp/system/system/lib
ln -s /apex/com.android.vndk.v30/lib $tmp/system/system/lib
mv lib vndk-30
ln -s /apex/com.android.vndk.v30/lib $tmp/system/system/lib
mv lib vndk-sp-30
ln -s /apex/com.android.vndk.v31/lib $tmp/system/system/lib
mv lib vndk-31
ln -s /apex/com.android.vndk.v31/lib $tmp/system/system/lib
mv lib vndk-sp-31
ln -s /apex/com.android.vndk.v32/lib $tmp/system/system/lib
mv lib vndk-32
ln -s /apex/com.android.vndk.v32/lib $tmp/system/system/lib
mv lib vndk-sp-32
cd $tmp/system/system/lib64
ln -s /apex/com.android.vndk.v30/lib64 $tmp/system/system/lib64
mv lib64 vndk-30
ln -s /apex/com.android.vndk.v30/lib64 $tmp/system/system/lib64
mv lib64 vndk-sp-30
ln -s /apex/com.android.vndk.v31/lib64 $tmp/system/system/lib64
mv lib64 vndk-31
ln -s /apex/com.android.vndk.v31/lib64 $tmp/system/system/lib64
mv lib64 vndk-sp-31
ln -s /apex/com.android.vndk.v32/lib64 $tmp/system/system/lib64
mv lib64 vndk-32
ln -s /apex/com.android.vndk.v32/lib64 $tmp/system/system/lib64
mv lib64 vndk-sp-32

echo "- Extracting Packages for GSI.."
python3 $pybin/imgextractor.py $phh/phh_patch.img $tmp
python3 $pybin/imgextractor.py $phh/devices.img $tmp
echo " "
echo "- Disabling DM Verity, and enabling GSI functions.."
sed -i "s+ro.build.system_root_image=false+ro.build.system_root_image=true+" $tmp/system/system/build.prop
sed -i "s+#media.settings.xml=/vendor/etc/media_profiles_vendor.xml+#+" $tmp/system/system/build.prop
sed -i "s+media.settings.xml=/vendor/etc/media_profiles_vendor.xml+#+" $tmp/system/system/build.prop
sed -i "s+debug.sf.enable_hwc_vds+#+" $tmp/system/system/build.prop
sed -i "s+debug.sf.latch_unsignaled+#+" $tmp/system/system/build.prop
sed -i "s+vendor.camera.aux.packagelist=org.codeaurora.snapcam+#+" $tmp/system/system/build.prop
sed -i "s+persist.vendor.camera.privapp.list=org.codeaurora.snapcam+#+" $tmp/system/system/build.prop
sed -i "s+ro.product.property_source_order=odm,vendor,product,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $tmp/system/system/build.prop
sed -i "s+ro.config.iccc_version=3.0+#+" $tmp/system/system/build.prop
sed -i "s+ro.actionable_compatible_property.enabled=true+#+" $tmp/system/system/build.prop
sed -i "s+ro.build.selinux=1+ro.build.selinux=0+" $tmp/system/system/build.prop
sed -i "s+ro.config.knox=v30+#+" $tmp/system/system/build.prop
sed -i "s+ro.config.dmverity=G+ro.config.dmverity=false+" $tmp/system/system/build.prop
sed -i "s+ro.config.knox.ucm=1+#+" $tmp/system/system/build.prop
sed -i "s+security.perf_harden=1+security.perf_harden=false+" $tmp/system/system/build.prop
sed -i "s+ro.adb.secure=1+ro.adb.secure=0+" $tmp/system/system/build.prop
cat $phh/fix.prop >> $tmp/system/system/build.prop
echo " "

full_avb=$($bin/avbtool info_image --image $tmp/product.img 2> $tmp/config/product_avb.log)
echo $full_avb > $tmp/config/product_avb.img
rm -rf $tmp/config/product_avb.img
rm -rf $tmp/product.img
sed -i "s+product/+system/system/product/+" $tmp/config/product_fs_config
cat $tmp/config/product_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/product $tmp/system/system
sed -i "s+ro.product.property_source_order=product,odm,vendor,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $tmp/system/system/product/etc/build.prop
sed -i "s+ro.product.property_source_order=odm,vendor,product,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $tmp/system/system/product/etc/build.prop
sed -i "s+persist.sys.usb.config=none+persist.sys.usb.config=adb+" $tmp/system/system/product/etc/build.prop
cat $phh/fix.prop >> $tmp/system/system/product/etc/build.prop

full_avb=$($bin/avbtool info_image --image $tmp/system_ext.img 2> $tmp/config/system_ext_avb.log)
echo $full_avb > $tmp/config/system_ext_avb.img
rm -rf $tmp/config/system_ext_avb.img
rm -rf $tmp/system_ext.img
sed -i "s+system_ext/+system/system/system_ext/+" $tmp/config/system_ext_fs_config
cat $tmp/config/system_ext_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/system_ext $tmp/system/system

full_avb=$($bin/avbtool info_image --image $tmp/vendor.img 2> $tmp/config/vendor_avb.log)
echo $full_avb > $tmp/config/vendor_avb.img
rm -rf $tmp/config/vendor_avb.img
rm -rf $tmp/vendor.img
sed -i "s+vendor/+system/system/product/+" $tmp/config/vendor_fs_config
grep ^system/system/product/overlay $tmp/config/vendor_fs_config | grep 0755$ > $tmp/config/vendor_fs_0755_config
grep ^system/system/product/overlay $tmp/config/vendor_fs_config | grep 0644$ > $tmp/config/vendor_fs_0644_config
sed -i "s+0 2000 0755+0 0 0755+" $tmp/config/vendor_fs_0755_config
cat $tmp/config/vendor_fs_0755_config >> $tmp/config/system_fs_config
cat $tmp/config/vendor_fs_0644_config >> $tmp/config/system_fs_config
sed -i "s+system/system/product/overlay/+system/system/cryzuezin/vo/+" $tmp/config/vendor_fs_0755_config
sed -i "s+system/system/product/overlay/+system/system/cryzuezin/vo/+" $tmp/config/vendor_fs_0644_config
cat $tmp/config/vendor_fs_0755_config >> $tmp/config/system_fs_config
cat $tmp/config/vendor_fs_0644_config >> $tmp/config/system_fs_config
sed -i "s+phh_patch/+system/+" $editor/config/phh_patch/phh_patch_fs_config
cat $editor/config/phh_patch/phh_patch_fs_config >> $editor/config/system_fs_config
sed -i "s+devices/+system/+" $editor/config/devices/devices_fs_config
cat $editor/config/devices/devices_fs_config >> $editor/config/system_fs_config
cat $phh/phh_fs_config >> $editor/config/system_fs_config
sed -i "s+0 0 0777+0 0 0644+" $editor/config/system_fs_config
cat $config/google_fs_config >> $editor/config/system_fs_config
cp -frp $tmp/vendor/overlay/* $tmp/system/system/product/overlay
cp -frp $tmp/phh_patch/* $tmp/system
cp -frp $tmp/devices/* $tmp/system
rm -rf $tmp/phh_patch
rm -rf $tmp/devices
cp -frp $tmp/vendor/overlay/* $tpm/system/system/cryzuezin/vo
cp -frp $tmp/vendor/etc/group $tmp/system/system/cryzuezin
cp -frp $tmp/vendor/etc/passwd $tmp/system/system/cryzuezin
rm -rf $tmp/vendor

rm -rf $tmp/config/*file_contexts
cp $contexts/google_file_contexts $tmp/config
cd $tmp/config && mv google_file_contexts system_file_contexts

echo "- Merging APEX, into main folder.."
cp -frp $tmp/system/system/system_ext/apex/* $tmp/system/system/apex
rm -rf $tmp/system/system/system_ext/apex
echo " "

echo "- Doing Debloat, set it in $bin"; sleep 5
# Debloat for Google
cd $tmp/system/system && sh $debloat/google_debloat.sh
echo " "

echo "- Detected Model: Google (erofs)"
echo " "

echo "- Repacking system.."
date=`date +%Y%m%d`
size1=`du -sb $tmp/system | cut -f1`
space=`expr $size1 + 259912340`
$bin/make_ext4fs -J -T -1 -S $tmp/config/system_file_contexts -C $tmp/config/system_fs_config -l $space -a system $editor/Google-AB-$date-CRYZUEZIN.img $tmp/system
echo "system size = $space"
echo " "

echo "- Compressing the IMG in GZIP.."
gzip -c $editor/Google-AB-$date-CRYZUEZIN.img > $editor/Google-AB-$date-CRYZUEZIN.img.gz
rm -rf $tmp
echo " "

echo "- Moving the file to $ajax"
mv -f $editor/Google-AB-$date-CRYZUEZIN.img.gz $ajax
rm -rf $editor
echo " "

echo "- Ready! Now you can send the Image to your testers, it is located: $ajax"
