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
rwsystem=$uka/bin/rwsystem
chmod -R 755 $bin
rm -rf $tmp
rm -rf $editor
mkdir -p $tmp
mkdir -p $editor

python3 $pybin/imgextractor.py $ajax/system.img $editor