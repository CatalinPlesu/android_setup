#!/bin/sh

echo "`tput setaf 2`Debloating google stuff`tput setaf 7`"
tput op
grep -o '^\S*' apk.uninstall | grep -v '#' | xargs -I% sh -c 'echo "uninstalling %"; adb shell pm uninstall -k --user 0 %'
