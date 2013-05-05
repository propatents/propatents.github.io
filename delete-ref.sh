#!/bin/bash

if (($# < 1)); then
	echo Usage: "$0 [old-ref]"
	echo Example: "$0 2"
	exit
fi

for ((i = $1+1; i < 50; ++i)); do
	echo "moving $i -> $((i-1))"
	./move-ref.sh $i $((i-1))
done
