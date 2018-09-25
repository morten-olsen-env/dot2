curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-macosx-x64.dmg > "$PACKAGE_DIR/jdk.dmg"
hdiutil attach "$PACKAGE_DIR/jdk.dmg"
mkdir -p "$PACKAGE_DIR/jdk"
pkgutil --expand /Volumes/JDK\ 8\ Update\ 181/JDK\ 8\ Update\ 181.pkg "$PACKAGE_DIR/jdktmp"
diskutil umount /Volumes/JDK\ 8\ Update\ 181
pushd "$PACKAGE_DIR/jdk"
cat "$PACKAGE_DIR/jdktmp/jdk180181.pkg/Payload" | gunzip -dc | cpio -i
popd
rm -rf "$PACKAGE_DIR/jdktmp"
rm -f "$PACKAGE_DIR/jdk.dmg"