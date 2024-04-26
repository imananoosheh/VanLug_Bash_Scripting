#!/usr/bin/bash

API_URL=https://picsum.photos/

if [ $# -eq 0 ]
then
	pixel1=$((500 + $RANDOM % 500))
	pixel2=$((500 + $RANDOM % 500))
	wget -qO- "$API_URL/$pixel1/$pixel2" >> pic_$(($RANDOM*$RANDOM)).png
elif [ $# -eq 1 ]
then
	pixel=$((500 + $RANDOM % 500))
	wget -qO- "$API_URL/$pixel/$pixel" >> pic_$(($RANDOM*$RANDOM)).png
else
	wget -qO- "$API_URL/$1/$2" >> pic_$(($RANDOM*$RANDOM)).png
fi

