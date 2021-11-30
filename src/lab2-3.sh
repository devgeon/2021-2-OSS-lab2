#!/bin/sh
weight=$1
height=$(echo "scale=2;$2/100" | bc -l)

# BMI=`expr $weight / \( $height \* $height \)`
BMI=$(echo "scale=2;$weight/($height*$height)" | bc -l)

# if [ $BMI -lt `expr 18.5` ]
if [ `echo "$BMI < 18.5" | bc` -eq 1 ]
then
	echo 저체중입니다.
# elif [ $BMI -ge 23 ]
elif [ `echo "$BMI >= 23" | bc` -eq 1 ]
then
	echo 과체중입니다.
else
	echo 정상체중입니다.
fi
exit 0
