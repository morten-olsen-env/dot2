case "$1" in
  aprotect)
    gpg -se -r "morten@olsen.io" $2
  ;;
  aunprotect)
    gpg -d -u "morten@olsen.io" -o "$3" "$2"
  ;;
  sprotect)
    echo $2 | openssl enc -e -aes-256-cbc -a -salt
  ;;
  sunprotect)
    echo $2 | openssl enc -d -aes-256-cbc -a -salt
  ;;
esac