#!/bin/bash

SOURCE=${HOME}/Downloads/Manga/
DESTINATION=/Volumes/limbic-freenas/Porn/Manga/

rsync -a -r --progress ${SOURCE} ${DESTINATION}
