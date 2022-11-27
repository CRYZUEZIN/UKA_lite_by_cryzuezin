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
rw=$uka/bin/realme

echo "- Detected Model: Realme"
echo " "

echo "- Extracting the Images from realme.bin.."
$bin/payload-dumper -c 8 -o $tmp $ajax/realme.bin
echo " "

echo "- Extracting the Images (erofs).."
echo " "
if [ -f $tmp/system.img ]; then

cp -frp $uka/bin/unpack/realmeui_unpack.sh $tmp
sh $tmp/realmeui_unpack.sh

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

echo "- Extracting the Images (ext4).."
echo " "

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

python3 $pybin/imgextractor.py $tmp/product.img $tmp
full_avb=$($bin/avbtool info_image --image $tmp/product.img 2> $tmp/config/product/product_avb.log)
echo $full_avb > $tmp/config/product/product_avb.img
rm -rf $tmp/config/product/product_avb.img
rm -rf $tmp/product.img
sed -i "s+product/+system/system/product/+" $tmp/config/product/product_fs_config
cat $tmp/config/product/product_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/product $tmp/system/system
sed -i "s+ro.product.property_source_order=product,odm,vendor,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $tmp/system/system/product/etc/build.prop
sed -i "s+ro.product.property_source_order=odm,vendor,product,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $tmp/system/system/product/etc/build.prop
sed -i "s+persist.sys.usb.config=none+persist.sys.usb.config=adb+" $tmp/system/system/product/etc/build.prop
cat $phh/fix.prop >> $tmp/system/system/product/etc/build.prop
echo " "

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
cp -frp $tmp/vendor/overlay/* $tmp/system/system/product/overlay
cp -frp $tmp/phh_patch/* $tmp/system
cp -frp $tmp/devices/* $tmp/system
rm -rf $tmp/phh_patch
rm -rf $tmp/devices
cp -frp $tmp/vendor/overlay/* $tmp/system/system/cryzuezin/vo
cp -frp $tmp/vendor/etc/group $tmp/system/system/cryzuezin
cp -frp $tmp/vendor/etc/passwd $tmp/system/system/cryzuezin
cp -frp $rw/rw-system.sh $tmp/system/system/bin
rm -rf $tmp/vendor

rm -rf $tmp/config/*file_contexts
cp $contexts/miui_file_contexts $tmp/config
cd $tmp/config && mv miui_file_contexts system_file_contexts

echo "- Merging APEX, into main folder.."
cp -frp $tmp/system/system/system_ext/apex/* $tmp/system/system/apex
rm -rf $tmp/system/system/system_ext/apex
echo " "

full_avb=$($bin/avbtool info_image --image $tmp/my_bigball.img 2> $tmp/config/my_bigball_avb.log)
echo $full_avb > $tmp/config/my_bigball_avb.img
rm -rf $tmp/config/my_bigball_avb.img
rm -rf $tmp/my_bigball.img
sed -i "s+my_bigball/+system/my_bigball/+" $tmp/config/my_bigball_fs_config
cat $tmp/config/my_bigball_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_bigball $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/my_carrier.img 2> $tmp/config/my_carrier_avb.log)
echo $full_avb > $tmp/config/my_carrier_avb.img
rm -rf $tmp/config/my_carrier_avb.img
rm -rf $tmp/my_carrier.img
sed -i "s+my_carrier/+system/my_carrier/+" $tmp/config/my_carrier_fs_config
cat $tmp/config/my_carrier_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_carrier $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/my_engineering.img 2> $tmp/config/my_engineering_avb.log)
echo $full_avb > $tmp/config/my_engineering_avb.img
rm -rf $tmp/config/my_engineering_avb.img
rm -rf $tmp/my_engineering.img
sed -i "s+my_engineering/+system/my_engineering/+" $tmp/config/my_engineering_fs_config
cat $tmp/config/my_engineering_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_engineering $tmp/system
echo " "
full_avb=$($bin/avbtool info_image --image $tmp/my_heytap.img 2> $tmp/config/my_heytap_avb.log)
echo $full_avb > $tmp/config/my_heytap_avb.img
rm -rf $tmp/config/my_heytap_avb.img
rm -rf $tmp/my_heytap.img
sed -i "s+my_heytap/+system/my_heytap/+" $tmp/config/my_heytap_fs_config
cat $tmp/config/my_heytap_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_heytap $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/my_manifest.img 2> $tmp/config/my_manifest_avb.log)
echo $full_avb > $tmp/config/my_manifest_avb.img
rm -rf $tmp/config/my_manifest_avb.img
rm -rf $tmp/my_manifest.img
sed -i "s+my_manifest/+system/my_manifest/+" $tmp/config/my_manifest_fs_config
cat $tmp/config/my_manifest_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_manifest $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/my_product.img 2> $tmp/config/my_product_avb.log)
echo $full_avb > $tmp/config/my_product_avb.img
rm -rf $tmp/config/my_product_avb.img
rm -rf $tmp/my_product.img
sed -i "s+my_product/+system/my_product/+" $tmp/config/my_product_fs_config
cat $tmp/config/my_product_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_product $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/my_region.img 2> $tmp/config/my_region_avb.log)
echo $full_avb > $tmp/config/my_region_avb.img
rm -rf $tmp/config/my_region_avb.img
rm -rf $tmp/my_region.img
sed -i "s+my_region/+system/my_region/+" $tmp/config/my_region_fs_config
cat $tmp/config/my_region_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_region $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/my_stock.img 2> $tmp/config/my_stock_avb.log)
echo $full_avb > $tmp/config/my_stock_avb.img
rm -rf $tmp/config/my_stock_avb.img
rm -rf $tmp/my_stock.img
sed -i "s+my_stock/+system/my_stock/+" $tmp/config/my_stock_fs_config
cat $tmp/config/my_stock_fs_config >> $tmp/config/system_fs_config
mv -f $tmp/my_stock $tmp/system

full_avb=$($bin/avbtool info_image --image $tmp/odm.img 2> $tmp/config/odm_avb.log)
echo $full_avb > $tmp/config/odm_avb.img
rm -rf $tmp/config/odm_avb.img
rm -rf $tmp/odm.img
sed -i "s+odm/+system/odm/+" $tmp/config/odm_fs_config
cat $tmp/config/odm_fs_config >> $tmp/config/system_fs_config
rm -rf $tmp/system/odm && cd $tmp/system && mkdir odm
mv -f $tmp/odm $tmp/system
sed -i "s+phh_patch/+system/+" $tmp/config/phh_patch/phh_patch_fs_config
cat $tmp/config/phh_patch/phh_patch_fs_config >> $tmp/config/system_fs_config
sed -i "s+devices/+system/+" $tmp/config/devices/devices_fs_config
cat $tmp/config/devices/devices_fs_config >> $tmp/config/system_fs_config
cat $phh/phh_fs_config >> $tmp/config/system_fs_config
sed -i "s+0 0 0777+0 0 0644+" $tmp/config/system_fs_config
cat $config/miui_fs_config >> $tmp/config/system_fs_config

echo "- Doing Debloat, set it in $bin"; sleep 5
# Debloat for Realme
cd $tmp/system && sh $debloat/realmeui_debloat.sh
echo " "

echo "- Detected Model: Realme"
echo " "

echo "- Repacking system.."
date=`date +%Y%m%d`
size1=`du -sb $tmp/system | cut -f1`
space=`expr $size1 + 259912340`
$bin/make_ext4fs -J -T -1 -S $tmp/config/system_file_contexts -C $tmp/config/system_fs_config -l $space -a system $editor/Realme-AB-$date-CRYZUEZIN.img $tmp/system
echo "system size = $space"
echo " "

echo "- Compressing the IMG in GZIP.."
gzip -c $editor/Realme-AB-$date-CRYZUEZIN.img > $editor/Realme-AB-$date-CRYZUEZIN.img.gz
rm -rf $tmp
echo " "

echo "- Moving the file to $ajax"
mv -f $editor/Realme-AB-$date-CRYZUEZIN.img.gz $ajax
rm -rf $editor
echo " "

echo "- Ready! Now you can send the Image to your testers, it is located: $ajax"
