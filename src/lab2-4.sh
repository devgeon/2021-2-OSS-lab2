#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
	YES | Yes | yes | Y | y)
		echo "yes";;
	# NO | No | no | N | n)
	[nN]*)
		echo "no";;
	*)
		echo "yes or no로 입력해 주세요.";;
esac

exit 0
