#!/bin/sh

if [ ! -e DB.txt ]
then
	touch DB.txt
	echo "* My friends" > DB.txt
fi

if [ -z $1 ]
then
	echo "연락처 혹은 옵션을 입력해주세요."
elif [ $1 = "reset" ]
then
	echo "연락처 데이터를 초기화할까요? (Y/N)"
	read answer

	if [ $answer = "Y" ]
	then
		echo "* My friends" > DB.txt
		echo "초기화가 완료되었습니다."
	else
		echo "Y or N로 입력해주세요."
	fi
else
	echo $1 $2 >> DB.txt
fi

exit 0
