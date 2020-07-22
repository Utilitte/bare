#!/usr/bin/env bash

## Repository name
echo -n "Repository name: "
read NAME

sed -i "s/#NAME#/$NAME/g" composer.json
sed -i "s/#NAME#/$NAME/g" README.md

## Namespace
echo -n "Namespace: "
read NAMESPACE

sed -i "s/#NAMESPACE#/$NAMESPACE/g" composer.json

rm src/.gitkeep
rm ./initialize.bash
rm tests/cases/.gitkeep
