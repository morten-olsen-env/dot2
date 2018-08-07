#!/bin/bash
TEST="$(which $1)"
if [[ ! -z $2 ]]; then
  TEST=`bash -c "$2"`
fi

if [[ -z "$(which brew)" ]]; then
  echo "Brew missing"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
if [[ -z $TEST ]]; then
  echo "Missing $1"
  brew install $1
fi