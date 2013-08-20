#!/bin/sh

SOURCE=$1

# script/rom relative position to place files.
BASE=../../../vendor/asus/tf101/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp $SOURCE/vendor/asus/tf101/proprietary/$FILE $BASE/$FILE
done

./setup-makefiles.sh

