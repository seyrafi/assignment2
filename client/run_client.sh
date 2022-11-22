#!/bin/sh

echo "in run_client file"

rc-service sshd restart

sshpass -p "mehdi" scp -P 22 -o "StrictHostKeyChecking no" alpineserver@172.168.11.42:/serverdata/1.txt /clientdata
sshpass -p "mehdi" scp -P 22 -o "StrictHostKeyChecking no" alpineserver@172.168.11.42:/serverdata/checksum.md5 /clientdata
echo "Files Received Successfully"

myfile1=$(md5sum 1.txt)
myfile2=$(cat checksum.md5)

echo "Checking... "

if [ "$myfile1" = "$myfile2" ]
then 
    echo "File is correct."
else
    echo "File is not correct."
    rm 1.txt 
    rm checksum.md5
fi

sh
