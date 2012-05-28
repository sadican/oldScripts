#!/bin/sh
# asdf
echo ">>> starting..."
file_name=1
echo "filename is $file_name"
echo ">>> while loop..."
while [ $file_name -ne 11 ]
do
echo ">>> looping..."
ping -c 3 192.168.2.22 > "$file_name.txt"
echo "filename is $file_name"
file_name=$((file_name+1))
done
echo ">>> exiting..."
exit 0
