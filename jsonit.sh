#! /bin/bash

filename=`basename $1 .txt`

awk ' BEGIN { print "[" } { print "\"",$NF,"\"," } END { print "]" } ' ${filename}.txt > ${filename}.json
