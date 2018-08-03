SHA1_HASH=`printf $1 | openssl sha1 | tr a-z A-Z | cut -d"=" -f2 | tr -d " "`
SHA_LOOKUP=`curl -s "https://api.pwnedpasswords.com/range/${SHA1_HASH:0:5}" | egrep -E "^${SHA1_HASH:5:${#SHA1_HASH}-5}"`
if [[ -n "${SHA_LOOKUP/[ ]*\n/}" ]]; then
  SHA_RESULTS="${SHA_LOOKUP:${#SHA1_HASH}-4:${#SHA_LOOKUP}-${#SHA1_HASH}+3}"
  echo "Password is pwn'ed $SHA_RESULTS times"
  exit 105
fi

echo "Password might still be alright"