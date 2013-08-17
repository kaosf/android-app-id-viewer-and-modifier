#! /bin/sh

if [ $# -lt 3 ]; then
  echo '3 arguments are required.' 2>&1
  echo 'They are used for $1.$2.$3.' 2>&1
  exit 1
fi

APP_ID="$1.$2.$3"

sed -e "s/net.kaosfield.app/$APP_ID/" -i src/net/kaosfield/app/MainActivity.java
sed -e "s/net.kaosfield.app/$APP_ID/" -i AndroidManifest.xml
sed -e "s/net.kaosfield.app/$APP_ID/" -i res/values/strings.xml

mv src/net/kaosfield/app src/net/kaosfield/$3
mv src/net/kaosfield     src/net/$2
mv src/net               src/$1