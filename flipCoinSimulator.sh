#! /bin/bash

countHead=0
countTail=0
number=21


for (( count=0; count<$number; count++ ))
do
	Result=$((RANDOM%2))
	if [ $Result -eq 0 ]
	then
        	countHead=$((countHead+1))

	elif [ $Result -eq 1 ]
 	then
        	countTail=$((countTail+1))
	fi
done
if [ $countHead -gt $countTail ]
then
	echo "head win" $countHead "times"
elif [ $countHead -eq $countTail ]
then
	echo "tie match"
else
	echo "tail win" $countTail "times"
fi
