#!/bin/sh

apt-get update
apt-get install $INPUT_OS_DEPENDENCIES -y

echo $(find . -name requirements.txt)
echo $GITHUB_WORKSPACE

pip install -r requirements.txt
