#!/bin/sh

echo "installing the apks"
cd apks
ls *.apk | xargs -I% -n 1 sh -c 'echo "`tput setaf 2`Installing %`tput setaf 7`";tput op;adb install -r %' 
