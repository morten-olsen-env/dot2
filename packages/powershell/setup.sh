NAME=powershell
URL="https://github.com/PowerShell/PowerShell/releases/download/v6.0.3/powershell-6.0.3-osx-x64.tar.gz"
INITPATH="$PWD"
mkdir -p $PACKAGE_DIR/download
curl $URL -L -o "$PACKAGE_DIR/$NAME.tar.gz"
cd $PACKAGE_DIR/download
tar -xf "$PACKAGE_DIR/$NAME.tar.gz" -C "$PACKAGE_DIR/download"
rm "$PACKAGE_DIR/$NAME.tar.gz"
cd $INITPATH