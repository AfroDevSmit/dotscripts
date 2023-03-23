#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Usage: $0 FirstName LastName"
	exit 1
fi

tempfile="__results.txt"
personname="$1 $2"
persondash="$1-$2"
curl http://doadb.com/name/$persondash.htm > $tempfile 2>/dev/null

grep 'class="alive"' $tempfile >/dev/null 2>&1

if [[ $? -eq 0 ]]; then
	echo "$personname is alive."
else
	grep 'class="dead"' $tempfile >/dev/null 2>&1
	if [[ $? -eq 0 ]]; then
		echo "$personname is DEAD."
	else
		echo "Couldn't determine whether $personname is alive or dead."
		echo "Maybe you should ask $1."
	fi
fi

rm -f $tempfile
