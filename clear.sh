#!/system/bin/sh

#PATH
uka=`pwd`
#functions
chmod -R 755 $uka
clear
echo -en "\E[32;1m"
echo "      -------------------------"
echo "      UKA Lite by CRYZUEZIN:"
echo "      version 5.15"
echo "      English Translated"
echo "      -------------------------"
echo "       Cleanup "
echo " "
echo -en "\E[37;1m"

echo "- Cleaning.."
for RM_DIR in editor; do
[ -d $uka/$RM_DIR ] && rm -rf $uka/$RM_DIR && echo "   Removing •> $uka/$RM_DIR"
done
for RM_FILES in $(ls -1 $uka); do
	case "$RM_FILES" in
		*new-rom*)
			echo "   Removing •> $uka/$RM_FILES"
			rm -rf $uka/$RM_FILES
			;;
	esac
done
for RM_BIN in $(ls -1 $uka/bin); do
	case $RM_BIN in
	*log | *tar.gz | tmp)
	echo "   Removing •> $uka/bin/$RM_BIN"
	rm -rf $uka/bin/$RM_BIN
	;;
	esac
done
echo " "
echo "- Done!"
