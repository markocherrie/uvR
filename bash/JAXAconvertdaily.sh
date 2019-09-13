#!/bin/bash

cd ../rawdata
FILES=*
gzip -d *.gz
rm *.gz

for f in $FILES;
do
perl ../perl/JAXAconvertdaily.pl < "$f" > ../convert/$f.txt
echo "Extracting $f..."
rm "$f"
done
