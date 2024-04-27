#!/bin/bash

mkdir output
cp  text.txt output/
cd output/
echo > read.txt
cat text.txt > read.txt
pwd > pwd.txt
ls > ls.txt
cp text.txt copy.txt

shopt -s expand_aliases

alias thedate='date'
thedate  > date.txt

shopt -u expand_aliases

wc -w text.txt > textcount.txt
ps | head -n 5 > process.txt 
ifconfig | head -n 5 > netstat.txt
mount | head -n 5 > mount.txt
echo > permissions.txt
chmod a+rwx permissions.txt
export TESTENV1="test"
grep -E '^.{3,}$' text.txt  > regex.txt
cd ..

exit 
