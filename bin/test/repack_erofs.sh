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
chmod -R 755 $bin

echo "- Repacking system.."
date=`date +%Y%m%d`
size1=`du -sb $tmp/system | cut -f1`
space=`expr $size1 + 259912340`
$bin/make_ext4fs -J -T -1 -S $tmp/config/system_file_contexts -C $tmp/config/system_fs_config -l $space -a system $editor/GSI-AB-$date-CRYZUEZIN.img $tmp/system
echo "system size = $space"
echo " "

echo "- Moving the file to $ajax"
mv -f $tmp/GSI-AB-$date-CRYZUEZIN.img $ajax
rm -rf $tmp
echo " "

echo "- Ready! Now you can send the Image to your testers, it is located: $ajax"