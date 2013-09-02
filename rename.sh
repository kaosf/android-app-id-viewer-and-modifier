#! /bin/sh

if [ $# -lt 3 ]; then
  echo '3 arguments are required.' 2>&1
  echo 'They are used for $1.$2.$3.' 2>&1
  exit 1
fi

APP_ID="$1.$2.$3"

sed -e "s/com.example.app/$APP_ID/" -i src/com/example/app/MainActivity.java
sed -e "s/com.example.app/$APP_ID/" -i AndroidManifest.xml
sed -e "s/com.example.app/$APP_ID/" -i res/values/strings.xml

mv src/com/example/app src/com/example/$3
mv src/com/example     src/com/$2
mv src/com             src/$1
