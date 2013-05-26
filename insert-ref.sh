#!/bin/bash

if (($# < 1)); then
	echo Usage: "$0 [new-ref]"
	echo Example: "$0 2"
	exit
fi

for ((i = 80; i >= $1; --i)); do
	echo "moving $i -> $((i+1))"
	./move-ref.sh $i $((i+1))
done
