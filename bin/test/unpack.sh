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
rm -rf $tmp
rm -rf $editor
mkdir -p $tmp
mkdir -p $editor

$py $pybin/imgextractor.py $ajax/system.img $editor