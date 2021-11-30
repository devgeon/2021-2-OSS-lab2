#!/bin/sh

if [ ! -e DB.txt ]
then
	echo "DB.txt를 찾을 수 없습니다."
	exit 1
else
	if [ "$1" != "" ]
	then
		result=$(grep -r $1 DB.txt)
		if [ "$result" != "" ]
		then
			echo $result
		else
			echo "해당하는 사람들 찾을 수 없습니다."
		fi
	else
		echo "검색어를 입력해주세요."
	fi

fi

exit 0
