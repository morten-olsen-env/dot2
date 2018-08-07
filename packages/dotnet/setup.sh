INITPATH="$PWD"
mkdir -p $PACKAGE_DIR/download
curl https://download.microsoft.com/download/1/1/5/115B762D-2B41-4AF3-9A63-92D9680B9409/dotnet-sdk-2.1.4-osx-x64.tar.gz -o "$PACKAGE_DIR/dotnet.tar.gz"
cd $PACKAGE_DIR/download
tar -xf "$PACKAGE_DIR/dotnet.tar.gz" -C "$PACKAGE_DIR/download"
rm "$PACKAGE_DIR/dotnet.tar.gz"
cd $INITPATH