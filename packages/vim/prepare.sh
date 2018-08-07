require.sh nvim
export VIM_BASE_PATH="$PACKAGE_DIR"
export VIM_PLUGIN_PATH="$PACKAGE_DIR/plugged"
export VIM_EXECUTABLE="/usr/local/Cellar/vim/8.1.0202/bin/vim"
export VIM_EXECUTABLE="nvim"
alias vim="$VIM_EXECUTABLE -u $PACKAGE_DIR/init.vim -N"
export EDITOR="$VIM_EXECUTABLE -u $PACKAGE_DIR/init.vim -N"