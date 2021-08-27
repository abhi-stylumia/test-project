#!/bin/sh

apt-get update
apt-get install $INPUT_OS_DEPENDENCIES -y
echo "deps => $INPUT_OS_DEPENDENCIES"

echo $INPUT_OS_DEPENDENCIES


echo $(find . -name requirements.txt)

echo "workspace => $GITHUB_WORKSPACE"

pip install -r requirements.txt
