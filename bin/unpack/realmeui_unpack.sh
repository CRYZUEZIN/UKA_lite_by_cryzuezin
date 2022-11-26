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

echo -en "\E[37;1m"
cd $tmp

if [ -f $tmp/system.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/system.img
fi
echo " "

if [ -f $tmp/system_ext.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/system_ext.img
fi
echo " "

if [ -f $tmp/vendor.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/vendor.img
fi
echo " "

if [ -f $tmp/my_bigball.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_bigball.img
fi
echo " "

if [ -f $tmp/my_carrier.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_carrier.img
fi
echo " "

if [ -f $tmp/my_engineering.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_engineering.img
fi
echo " "

if [ -f $tmp/my_heytap.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_heytap.img
fi
echo " "

if [ -f $tmp/my_manifest.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_manifest.img
fi
echo " "

if [ -f $tmp/my_product.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_product.img
fi
echo " "

if [ -f $tmp/my_region.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_region.img
fi
echo " "

if [ -f $tmp/my_stock.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/my_stock.img
fi
echo " "

if [ -f $tmp/odm.img ]; then
$bin/erofsUnpackKt -x -f -i $tmp/odm.img
fi
echo " "