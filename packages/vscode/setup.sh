INITPATH="$PWD"
mkdir -p "$PACKAGE_DIR/download/code-portable-data"
curl https://go.microsoft.com/fwlink/?LinkID=620882 -L -o "$PACKAGE_DIR/download/vscode.zip"
cd $PACKAGE_DIR/download
unzip "$PACKAGE_DIR/download/vscode.zip"
rm "$PACKAGE_DIR/download/vscode.zip"
xattr -dr com.apple.quarantine "$PACKAGE_DIR/download/Visual Studio Code.app"
cd $INITPATH