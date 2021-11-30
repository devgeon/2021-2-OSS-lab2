#!/bin/sh

if [ ! -d ./$1 ]
then
	mkdir $1
fi

cd $1

for i in `seq 0 4`
do
	touch file$i.txt
done

tar cf files.tar ./*.txt

ls
mkdir $1
mv files.tar ./$1/files.tar
cd $1

tar xvf files.tar

exit 0
