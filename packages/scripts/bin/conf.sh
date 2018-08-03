case "$1" in
  edit)
    code $DOT_FILE_DIR
  ;;
  save)
    INITDIR=$PWD
    cd $DOT_FILE_DIR
    git add --all
    git commit
    git push
    cd $INITDIR
  ;;
esac