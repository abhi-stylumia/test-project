#!/bin/sh

apt-get update && apt-get install $INPUT_OS_DEPENDENCIES -y

echo $(ls)

pip install -r requirements.txt