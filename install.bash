#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: install.bash PROJECT_NAME"
    exit 1;
fi

rm -rf .git && \
sed -i -e "s/ts-boiler/$1/g" package.json && \
rm -f rm package.json-e && \
git init && yarn install && \
git remote add https://github.com/kavaro/$1