#!/bin/bash
set -e

apt-get update && apt-get install $INPUT_OS_DEPENDENCIES -y

echo $INPUT_OS_DEPENDENCIES

echo $(find . -name requirements.txt)

pip install -r requirements.txt

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

sh -c "find . -type f -name '*.py' | xargs python /pylint_check.py"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
