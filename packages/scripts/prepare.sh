export PATH=$PATH:$PACKAGE_DIR/bin
require.sh "pwgen"
require.sh "gpg"
require.sh "Caskroom/cask/osxfuse" "pkgutil --pkgs | grep -i osxfuse"
require.sh "encfs"