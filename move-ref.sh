#!/bin/bash

if (($# < 2)); then
	echo Usage: "$0 [from] [to]"
	echo Example: "$0 1 2"
	exit
fi

sed -i "s:<sup><a href=\"#n$1\" id=\"r$1\">$1</a></sup>:<sup><a href=\"#n$2\" id=\"r$2\">$2</a></sup>:g" index.html
sed -i "s:<sup><a href=\"#r$1\" id=\"n$1\">$1</a></sup>:<sup><a href=\"#r$2\" id=\"n$2\">$2</a></sup>:g" index.html
