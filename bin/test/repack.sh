#!/system/bin/sh

#PATH
ajax=/sdcard
uka=/data/local/uka-lite
#BIN
bin=$uka/bin/arm
tmp=$uka/bin/tmp
pybin=$uka/bin/python
editor=$uka/editor
py=/data/local/python39/usr/bin/python3.9
chmod -R 755 $bin

echo "- Repacking system.."
date=`date +%Y%m%d`
size1=`du -sk $editor/system | awk '{$1*=1024;$1=int($1*1.05);printf $1}'`
$bin/make_ext4fs -J -T -1 -S $editor/config/system/system_file_contexts -C $editor/config/system/system_fs_config -l $size1 -a system $tmp/GSI-AB-12-$date-CRYZUEZIN.img $editor/system
echo "system size = $size1"
echo " "

echo "- Compressing the IMG in GZIP.."
gzip -c $tmp/GSI-AB-12-$date-CRYZUEZIN.img > $tmp/GSI-AB-12-$date-CRYZUEZIN.img.gz
rm -rf $tmp/GSI-AB-12-$date-CRYZUEZIN.img
rm -rf $editor
echo " "

echo "- Moving the file to $ajax"
mv -f $tmp/GSI-AB-12-$date-CRYZUEZIN.img.gz $ajax