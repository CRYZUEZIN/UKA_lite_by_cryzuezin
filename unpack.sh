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
config=$uka/bin/config
contexts=$uka/bin/contexts
phh=$uka/bin/phh

clear
echo -en "\E[32;1m"
echo "      -------------------------"
echo "      UKA Lite by CRYZUEZIN:"
echo "      version 5.16"
echo "      English Translated"
echo "      -------------------------"
echo -en "\E[37;1m"
echo " "
echo "Tool to port systems for Samsung, Motorola, Xioami, Google and Realme!"
echo " "
echo "Put a super.img.lz4, prism.img.lz4 and prism.img.lz4 on $ajax for Samsung"
echo " "
echo "Rename super.img.lz4 to erofs.img.lz4 and put prism.img.lz4 and prism.img.lz4 in $ajax for Samsung (erofs)"
echo " "
echo "Put a $.xml.zip on $ajax for Motorola (MotoUI Global)"
echo " "
echo "Put a super.img_sparsechunk.$ on $ajax for Motorola (MotoUI CN - Chinese)"
echo " "
echo "Put a $.12.0.zip and $.13.0.zip on $ajax for Xioami"
echo " "
echo "Take payload.bin from inside $.zip and rename it to realme.bin, and put it in $ajax for Realme"
echo " "
echo "Note: Remember that Ports works on Android 12, Android 12.1 and Android 13 (Not on Android 11)"
echo " "

if [ -f $ajax/super.img.lz4 ]; then

sh $uka/bin/unpack/oneui.sh

fi

if [ -f $ajax/erofs.img.lz4 ]; then

sh $uka/bin/unpack/oneui_erofs.sh

fi

if [ -f $ajax/*.xml.zip ]; then

sh $uka/bin/unpack/motoui.sh

fi

if [ -f $ajax/super.img_sparsechunk.1 ]; then

sh $uka/bin/unpack/motoui.sh

fi

if [ -f $ajax/*.0.zip ]; then

sh $uka/bin/unpack/miui.sh

fi

if [ -f $ajax/realme.bin ]; then

sh $uka/bin/unpack/realmeui.sh

fi

echo " "
echo "- Renaming the file to its original type.."
mv $ajax/*.xml $ajax/*.xml.zip
mv $ajax/*.0 $ajax/*.0.zip
echo " "