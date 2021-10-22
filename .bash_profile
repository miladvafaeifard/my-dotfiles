#!/usr/bin/env bash

for file in ~/.{aliases,functions,private,sets,startup}
do
	[ -r $file ] && [ -f $file ] && source $file
done
unset file
