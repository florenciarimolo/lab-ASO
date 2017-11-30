#!/bin/bash

FOLDER=$1
TYPE="TOTAL"
LEVEL="0"
DATE=`date +%Y_%m_%d_%H_%M_%S`
# Replacing the '/'s of the folder name
FOLDERNAME="${FOLDER//\//-}"
NAME=$DATE\_$FOLDERNAME\_$TYPE\_$LEVEL
tar -cvpzf "/backup/$NAME.tar.gz" $FOLDER
