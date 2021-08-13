#!/bin/sh
echo "`tput setaf 2`Downloading the apks`tput setaf 7`"
tput op
mkdir apks
cd apks

grep -v '#' ../apk.install | xargs -I% wget -c %
