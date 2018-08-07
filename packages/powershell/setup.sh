NAME=powershell
URL="https://github-production-release-asset-2e65be.s3.amazonaws.com/49609581/29c4b740-8b6d-11e8-8536-0221a9469e75?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20180807%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20180807T113446Z&X-Amz-Expires=300&X-Amz-Signature=cab682a0394c57f986c865a88d38db029d5657690a2eb6cc5ee7afca57a99cb1&X-Amz-SignedHeaders=host&actor_id=970042&response-content-disposition=attachment%3B%20filename%3Dpowershell-6.0.3-osx-x64.tar.gz&response-content-type=application%2Foctet-stream"
INITPATH="$PWD"
mkdir -p $PACKAGE_DIR/download
curl $URL -o "$PACKAGE_DIR/$NAME.tar.gz"
cd $PACKAGE_DIR/download
tar -xf "$PACKAGE_DIR/$NAME.tar.gz" -C "$PACKAGE_DIR/download"
rm "$PACKAGE_DIR/$NAME.tar.gz"
cd $INITPATH