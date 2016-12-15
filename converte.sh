#!/bin/sh

# Script to convert project development files from iso-8859-1 to utf8


for i in $(ls -lh *.php | awk -F " " '{print $9}') 
do
	iconv -t utf8 -f iso-8859-1 $i -o $i.utf8
done

cd auth
for i in $(ls -lh *.php | awk -F " " '{print $9}') 
do
	iconv -t utf8 -f iso-8859-1 $i -o $i.utf8
done

cd ../objects

for i in $(ls -lh *.php | awk -F " " '{print $9}') 
do
	iconv -t utf8 -f iso-8859-1 $i -o $i.utf8
done

cd ../resources
for i in $(ls -lh *.php | awk -F " " '{print $9}') 
do
	iconv -t utf8 -f iso-8859-1 $i -o $i.utf8
done

cd ..

