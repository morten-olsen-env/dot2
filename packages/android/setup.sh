echo "Installing Android"
# TODO: Change for non darwin, to use linux version
curl https://dl.google.com/android/repository/sdk-tools-darwin-3859397.zip -o android.zip
mkdir -p $ANDROID_HOME
mv android.zip $ANDROID_HOME
pushd $ANDROID_HOME
unzip android.zip
rm android.zip
popd
mkdir -p $ANDROID_HOME/licenses
echo "601085b94cd77f0b54ff86406957099ebe79c4d6" > $ANDROID_HOME/licenses/android-googletv-licenses
echo "d56f5187479451eabf01fb78af6dfcb131a6481e" > $ANDROID_HOME/licenses/android-sdk-license
echo "84831b9409646a918e30573bab4c9c91346d8abd" > $ANDROID_HOME/licenses/android-sdk-preview-license
echo "33b6a2b64607f11b759f320ef9dff4ae5c47d97a" > $ANDROID_HOME/licenses/google-gdk-license
echo "d975f751698a77b662f1254ddbeed3901e976f5a" > $ANDROID_HOME/licenses/intel-android-extra-license
echo "e9acab5b5fbb560a72cfaecce8946896ff6aab9d" > $ANDROID_HOME/licenses/mips-android-sysimage-license