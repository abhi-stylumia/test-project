#!/bin/sh

apt-get update && apt-get install $INPUT_OS_DEPENDENCIES -y

echo $(find . -name requirements.txt)

pip install -r requirements.txt