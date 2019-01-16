export PATH=$PATH:$PACKAGE_DIR/bin
require.sh "pwgen"
require.sh "gpg"
require.sh "Caskroom/cask/osxfuse" "pkgutil --pkgs | grep -i osxfuse"
require.sh "encfs"


function getpass() {
  bw list items | fx "this.find(x => x.name.toLowerCase() === '$1'.toLowerCase()).login.password"
}

function unlock() {
  export BW_SESSION=$(bw unlock --raw)
}