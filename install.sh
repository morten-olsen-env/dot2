INIT_DIR=$PWD
export DOT_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ -f $HOME/.zshrc ]; then
  read -p "a zsh config is already installed, do you wish to override it? [y/N]" yn
  case $yn in
    [Yy]* );;
    * ) echo "exiting"; exit 1;;
  esac
fi

CHECK_ZSH_INSTALLED=$(grep /zsh$ /etc/shells | wc -l)
if [ ! $CHECK_ZSH_INSTALLED -ge 1 ]; then
   printf "Zsh is not installed! Please install zsh first!\n"
   exit 2
fi
unset CHECK_ZSH_INSTALLED

echo 'installing'
rm -f $HOME/.zshrc
if [ ! -f $HOME/.zshrc ]; then
  ln -s $DOT_FILE_DIR/init.sh $HOME/.zshrc
  if [ -f $HOME/.zshrc ]; then
    echo "zsh config installed"
    echo "setting up modules"
    cd $DOT_FILE_DIR
    git submodule init
    git submodule update
    git submodule update --init --recursive
    cd $INIT_DIR
    # chsh -s $(grep /zsh$ /etc/shells | tail -1)
    exit 0
  else
    echo "could not install the new config"
    exit 2
  fi
else
  echo 'could not remove previous zsh configuration'
  exit 2
fi
