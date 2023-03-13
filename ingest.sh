#!/bin/bash
set -e

FOLDER="/home/harry/Pictures/imported/$(date +%Y-%m-%d)"
TEMP=$(mktemp -d)
echo "Copying files from source to temporary directory ($1 => $TEMP)..."
rsync --human-readable --info=progress2 --recursive $1/ $TEMP
if test $FOLDER; then
  echo "Destination folder exists ($FOLDER)..."
else
  echo "Creating destination folder ($FOLDER)..."
  mkdir $FOLDER
fi
echo "Copying to destination folder ($TEMP => $FOLDER)..."
rsync --human-readable --info=progress2 --recursive $TEMP/ $FOLDER
echo "Removing source files ($1)..."
rm -r $1/*
