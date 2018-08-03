export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# export DOT_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
export DOT_FILE_DIR="$(dirname $(readlink ~/.zshrc))"

mkdir -p $DOT_FILE_DIR/logs
mkdir -p $DOT_FILE_DIR/logs/installs
source "$DOT_FILE_DIR/packages.sh"
for f in $PACKAGES
do
  export PACKAGE_DIR="$DOT_FILE_DIR/packages/$f"
  if [ -f $PACKAGE_DIR/prepare.sh ]; then
    source $PACKAGE_DIR/prepare.sh
  fi


  if [ -f $PACKAGE_DIR/setup.sh ]; then
    if [ ! -f "$DOT_FILE_DIR/logs/installs/$f" ]; then
      echo "Installing $f"
      bash $PACKAGE_DIR/setup.sh >> "$DOT_FILE_DIR/logs/installs/$f"
    fi
  fi


  if [ -f $PACKAGE_DIR/load.sh ]; then
    source $PACKAGE_DIR/load.sh
  fi
  unset PACKAGE_DIR
done
unset PACKAGES
