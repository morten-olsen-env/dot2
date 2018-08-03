INITPATH="$PWD"
mkdir -p $GOROOT
curl https://dl.google.com/go/go1.10.darwin-amd64.tar.gz -o "$PACKAGE_DIR/go.tar.gz"
cd $GOROOT
tar -xf "$PACKAGE_DIR/go.tar.gz" -C "$PACKAGE_DIR"
rm "$PACKAGE_DIR/go.tar.gz"
cd $INITPATH

