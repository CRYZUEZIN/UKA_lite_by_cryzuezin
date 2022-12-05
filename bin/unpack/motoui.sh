#!/system/bin/sh

#PATH
ajax=`pwd`
uka=`pwd`
#BIN
bin=$uka/bin/arm
tmp=$uka/bin/tmp
pybin=$uka/bin/python
editor=$uka/editor
debloat=$uka/bin/debloat
contexts=$uka/bin/contexts
config=$uka/bin/config
phh=$uka/bin/phh

if [ -f $ajax/*.xml.zip ]; then
# MotoUI Global (12.0)
echo "- Detected Model: Motorola"
echo " "

echo "- Renaming the file.."
mv $ajax/*.xml.zip $ajax/*.xml
echo " "

echo "- Extracting ZIP.."
unzip -o $ajax/*.xml -d $tmp
echo " "

echo "- Conversion sparsechunk.* to super.img.."
cd $tmp
name1=$(find . -maxdepth 1 -name "super*chunk*" | sort -n | grep -v "[0-9][0-9]")
name2=$(find . -maxdepth 1 -name "super*chunk*" | sort -n | grep "[0-9][0-9]")
echo " "

echo "- Gluing super_raw.img.."
$bin/simg2img ${name1} ${name2} $tmp/super_raw.img
echo " "
else
# MotoUI CN (12.0)
echo "- Detected Model: Motorola"
echo " "

echo "- Conversion sparsechunk.* to super.img.."
cd $ajax
name1=$(find . -maxdepth 1 -name "super*chunk*" | sort -n | grep -v "[0-9][0-9]")
name2=$(find . -maxdepth 1 -name "super*chunk*" | sort -n | grep "[0-9][0-9]")
echo " "

echo "- Gluing super_raw.img.."
$bin/simg2img ${name1} ${name2} $tmp/super_raw.img
echo " "
fi

echo "- Extracting the Images from the Super Partition.."
$bin/lpunpack $tmp/super_raw.img $tmp
rm -rf $tmp/super_raw.img
echo " "

echo "- Merging Motorola Images, to the ideal format.."
cd $tmp && mv product_a.img product.img && rm product_b.img && mv system_a.img system.img && rm system_b.img && mv system_ext_a.img system_ext.img && rm system_ext_b.img && mv vendor_a.img vendor.img && rm vendor_b.img
echo " "

python3 $pybin/imgextractor.py $tmp/system.img $editor
full_avb=$($bin/avbtool info_image --image $tmp/system.img 2> $editor/config/system/system_avb.log)
echo $full_avb > $editor/config/system/system_avb.img
rm -rf $editor/config/system/system_avb.img
rm -rf $tmp/system.img
sed -i "s+system/system/product 0 0 0644 /product+system/product 0 0 0644 /system/product+" $editor/config/system/system_fs_config
sed -i "s+system/product 0 0 0755+system/system/product 0 0 0755+" $editor/config/system/system_fs_config
sed -i "s+system/system/system_ext 0 0 0644 /system_ext+system/system_ext 0 0 0644 /system/system_ext+" $editor/config/system/system_fs_config
sed -i "s+system/system_ext 0 0 0755+system/system/system_ext 0 0 0755+" $editor/config/system/system_fs_config
rm -rf $editor/system/cache && cd $editor/system && mkdir cache
sed -i "s+cache 0 0 0644 /data/cache+cache 1000 2001 0770+" $editor/config/system/system_fs_config
sed -i "s+system/system/bin 0 0 0755+system/system/bin 0 2000 0751+" $editor/config/system/system_fs_config
sed -i "s+system/system/bin/uncrypt 0 0 0755+system/system/bin/uncrypt 0 2000 0755+" $editor/config/system/system_fs_config
sed -i "s+system/system/bin/simpleperf_app_runner 0 2000 0755+system/system/bin/simpleperf_app_runner 0 2000 0750 capabilities=0xc0+" $editor/config/system/system_fs_config
rm -rf $editor/system/system/product
rm -rf $editor/system/system/system_ext
rm -rf $editor/system/product
rm -rf $editor/system/system_ext
rm -rf $editor/system/system/lib/vndk-30
rm -rf $editor/system/system/lib/vndk-sp-30
rm -rf $editor/system/system/lib/vndk-31
rm -rf $editor/system/system/lib/vndk-sp-31
rm -rf $editor/system/system/lib/vndk-32
rm -rf $editor/system/system/lib/vndk-sp-32
rm -rf $editor/system/system/lib64/vndk-30
rm -rf $editor/system/system/lib64/vndk-sp-30
rm -rf $editor/system/system/lib64/vndk-31
rm -rf $editor/system/system/lib64/vndk-sp-31
rm -rf $editor/system/system/lib64/vndk-32
rm -rf $editor/system/system/lib64/vndk-sp-32
ln -s /system/product $editor/system
ln -s /system/system_ext $editor/system
cd $editor/system/system/lib
ln -s /apex/com.android.vndk.v30/lib $editor/system/system/lib
mv lib vndk-30
ln -s /apex/com.android.vndk.v30/lib $editor/system/system/lib
mv lib vndk-sp-30
ln -s /apex/com.android.vndk.v31/lib $editor/system/system/lib
mv lib vndk-31
ln -s /apex/com.android.vndk.v31/lib $editor/system/system/lib
mv lib vndk-sp-31
ln -s /apex/com.android.vndk.v32/lib $editor/system/system/lib
mv lib vndk-32
ln -s /apex/com.android.vndk.v32/lib $editor/system/system/lib
mv lib vndk-sp-32
cd $editor/system/system/lib64
ln -s /apex/com.android.vndk.v30/lib64 $editor/system/system/lib64
mv lib64 vndk-30
ln -s /apex/com.android.vndk.v30/lib64 $editor/system/system/lib64
mv lib64 vndk-sp-30
ln -s /apex/com.android.vndk.v31/lib64 $editor/system/system/lib64
mv lib64 vndk-31
ln -s /apex/com.android.vndk.v31/lib64 $editor/system/system/lib64
mv lib64 vndk-sp-31
ln -s /apex/com.android.vndk.v32/lib64 $editor/system/system/lib64
mv lib64 vndk-32
ln -s /apex/com.android.vndk.v32/lib64 $editor/system/system/lib64
mv lib64 vndk-sp-32
echo " "

echo "- Extracting Packages for GSI.."
python3 $pybin/imgextractor.py $phh/phh_patch.img $editor
python3 $pybin/imgextractor.py $phh/devices.img $editor
echo " "
echo "- Disabling DM Verity, and enabling GSI functions.."
sed -i "s+ro.build.system_root_image=false+ro.build.system_root_image=true+" $editor/system/system/build.prop
sed -i "s+#media.settings.xml=/vendor/etc/media_profiles_vendor.xml+#+" $editor/system/system/build.prop
sed -i "s+media.settings.xml=/vendor/etc/media_profiles_vendor.xml+#+" $editor/system/system/build.prop
sed -i "s+debug.sf.enable_hwc_vds+#+" $editor/system/system/build.prop
sed -i "s+debug.sf.latch_unsignaled+#+" $editor/system/system/build.prop
sed -i "s+vendor.camera.aux.packagelist=org.codeaurora.snapcam+#+" $editor/system/system/build.prop
sed -i "s+persist.vendor.camera.privapp.list=org.codeaurora.snapcam+#+" $editor/system/system/build.prop
sed -i "s+ro.product.property_source_order=odm,vendor,product,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $editor/system/system/build.prop
sed -i "s+ro.config.iccc_version=3.0+#+" $editor/system/system/build.prop
sed -i "s+ro.actionable_compatible_property.enabled=true+#+" $editor/system/system/build.prop
sed -i "s+ro.build.selinux=1+ro.build.selinux=0+" $editor/system/system/build.prop
sed -i "s+ro.config.knox=v30+#+" $editor/system/system/build.prop
sed -i "s+ro.config.dmverity=G+ro.config.dmverity=false+" $editor/system/system/build.prop
sed -i "s+ro.config.knox.ucm=1+#+" $editor/system/system/build.prop
sed -i "s+security.perf_harden=1+security.perf_harden=false+" $editor/system/system/build.prop
sed -i "s+ro.adb.secure=1+ro.adb.secure=0+" $editor/system/system/build.prop
cat $phh/fix.prop >> $editor/system/system/build.prop
cat $phh/phh_file_contexts >> $editor/config/system/system_file_contexts
echo " "

python3 $pybin/imgextractor.py $tmp/product.img $editor
full_avb=$($bin/avbtool info_image --image $tmp/product.img 2> $editor/config/product/product_avb.log)
echo $full_avb > $editor/config/product/product_avb.img
rm -rf $editor/config/product/product_avb.img
rm -rf $tmp/product.img
sed -i "s+product/+system/system/product/+" $editor/config/product/product_fs_config
cat $editor/config/product/product_fs_config >> $editor/config/system/system_fs_config
mv -f $editor/product $editor/system/system
sed -i "s+ro.product.property_source_order=product,odm,vendor,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $editor/system/system/product/etc/build.prop
sed -i "s+ro.product.property_source_order=odm,vendor,product,system_ext,system+ro.product.property_source_order=system,product,system_ext,vendor,odm+" $editor/system/system/product/etc/build.prop
sed -i "s+persist.sys.usb.config=none+persist.sys.usb.config=adb+" $editor/system/system/product/etc/build.prop
cat $phh/fix.prop >> $editor/system/system/product/etc/build.prop

python3 $pybin/imgextractor.py $tmp/system_ext.img $editor
full_avb=$($bin/avbtool info_image --image $tmp/system_ext.img 2> $editor/config/system_ext/system_ext_avb.log)
echo $full_avb > $editor/config/system_ext/system_ext_avb.img
rm -rf $editor/config/system_ext/system_ext_avb.img
rm -rf $tmp/system_ext.img
sed -i "s+system_ext/+system/system/system_ext/+" $editor/config/system_ext/system_ext_fs_config
cat $editor/config/system_ext/system_ext_fs_config >> $editor/config/system/system_fs_config
mv -f $editor/system_ext $editor/system/system

python3 $pybin/imgextractor.py $tmp/vendor.img $editor
full_avb=$($bin/avbtool info_image --image $tmp/vendor.img 2> $editor/config/vendor/vendor_avb.log)
echo $full_avb > $editor/config/vendor/vendor_avb.img
rm -rf $editor/config/vendor/vendor_avb.img
rm -rf $tmp/vendor.img
rm -rf $tmp
mkdir -p $tmp
sed -i "s+vendor/+system/system/product/+" $editor/config/vendor/vendor_fs_config
grep ^system/system/product/overlay $editor/config/vendor/vendor_fs_config | grep 0755$ > $editor/config/vendor/vendor_fs_0755_config
grep ^system/system/product/overlay $editor/config/vendor/vendor_fs_config | grep 0644$ > $editor/config/vendor/vendor_fs_0644_config
sed -i "s+0 2000 0755+0 0 0755+" $editor/config/vendor/vendor_fs_0755_config
cat $editor/config/vendor/vendor_fs_0755_config >> $editor/config/system/system_fs_config
cat $editor/config/vendor/vendor_fs_0644_config >> $editor/config/system/system_fs_config
sed -i "s+system/system/product/overlay/+system/system/cryzuezin/vo/+" $editor/config/vendor/vendor_fs_0755_config
sed -i "s+system/system/product/overlay/+system/system/cryzuezin/vo/+" $editor/config/vendor/vendor_fs_0644_config
cat $editor/config/vendor/vendor_fs_0755_config >> $editor/config/system/system_fs_config
cat $editor/config/vendor/vendor_fs_0644_config >> $editor/config/system/system_fs_config
sed -i "s+phh_patch/+system/+" $editor/config/phh_patch/phh_patch_fs_config
cat $editor/config/phh_patch/phh_patch_fs_config >> $editor/config/system/system_fs_config
sed -i "s+devices/+system/+" $editor/config/devices/devices_fs_config
cat $editor/config/devices/devices_fs_config >> $editor/config/system/system_fs_config
cat $phh/phh_fs_config >> $editor/config/system/system_fs_config
sed -i "s+0 0 0777+0 0 0644+" $editor/config/system/system_fs_config
cp -frp $editor/vendor/overlay/* $editor/system/system/product/overlay
#SECONDARY FILES FOR MOTOUI
cp -frp $editor/system/system/bin/init $editor
cp -frp $editor/system/system/lib64/libfs_mgr.so $editor
cp -frp $editor/system/system/lib64/libfs_mgr_binder.so $editor
#
cp -frp $editor/phh_patch/* $editor/system
cp -frp $editor/devices/* $editor/system
rm -rf $editor/phh_patch
rm -rf $editor/devices
cp -frp $editor/vendor/overlay/* $editor/system/system/cryzuezin/vo
cp -frp $editor/vendor/etc/group $editor/system/system/cryzuezin
cp -frp $editor/vendor/etc/passwd $editor/system/system/cryzuezin
#SECONDARY FILES FOR MOTOUI
cp -frp $editor/init $editor/system/system/bin
cp -frp $phh/rw-system.sh $editor/system/system/bin
cp -frp $editor/libfs_mgr.so $editor/system/system/lib64
cp -frp $editor/libfs_mgr_binder.so $editor/system/system/lib64
#
rm -rf $editor/vendor

echo "- Merging APEX, into main folder.."
cp -frp $editor/system/system/system_ext/apex/* $editor/system/system/apex
rm -rf $editor/system/system/system_ext/apex
echo " "

echo "- Doing Debloat, set it in $debloat"; sleep 5
if [ -d $editor/system/system/product/app/LatinIME ]; then
# Debloat for MotoUI CN (Chinese)
cd $editor/system/system && sh $debloat/motoui_debloat02.sh
echo " "
fi

# Debloat for MotoUI Global
cd $editor/system/system && sh $debloat/motoui_debloat.sh
echo " "

echo "- Detected Model: Motorola"
echo " "

echo "- Repacking system.."
date=`date +%Y%m%d`
size1=`du -sb $editor/system | cut -f1`
space=`expr $size1 + 259912340`
$bin/make_ext4fs -J -T -1 -S $editor/config/system/system_file_contexts -C $editor/config/system/system_fs_config -l $space -a system $tmp/MotoUI-AB-$date-CRYZUEZIN.img $editor/system
echo "system size = $space"

echo " "
echo "- Compressing the IMG in GZIP.."
gzip -c $tmp/MotoUI-AB-$date-CRYZUEZIN.img > $tmp/MotoUI-AB-$date-CRYZUEZIN.img.gz
rm -rf $tmp/MotoUI-AB-$date-CRYZUEZIN.img
rm -rf $editor
echo " "

echo "- Moving the file to $ajax"
mv -f $tmp/MotoUI-AB-$date-CRYZUEZIN.img.gz $ajax
rm -rf $tmp
echo " "

echo "- Ready! Now you can send the Image to your testers, it is located: $ajax"
