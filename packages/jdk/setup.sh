curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-macosx-x64.dmg -o "$PACKAGE_DIR/jdk.dmg"
hdiutil attach "$PACKAGE_DIR/jdk.dmg"
mkdir -p "$PACKAGE_DIR/jdk"
pkgutil --expand /Volumes/JDK\ 8\ Update\ 191/JDK\ 8\ Update\ 191.pkg "$PACKAGE_DIR/jdktmp"
diskutil umount /Volumes/JDK\ 8\ Update\ 191
pushd "$PACKAGE_DIR/jdk"
cat "$PACKAGE_DIR/jdktmp/jdk180191.pkg/Payload" | gunzip -dc | cpio -i
popd
rm -rf "$PACKAGE_DIR/jdktmp"
rm -f "$PACKAGE_DIR/jdk.dmg"