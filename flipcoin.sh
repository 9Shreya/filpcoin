#! /bin/bash

random=$(( RANDOM%((1-0)+1)+0 ))
echo $random
if [ $random -eq 1 ]
then
echo heads
else
echo tails
fi

declare -a array

array=(0 0)

for (( index=0;index<10;index++ ))
do
random=$(( RANDOM%((1-0)+1)+0 ))
array[$random]=$(( ${array[$random]}+1 ))
done

echo head occured ${array[1]}
echo tails occured ${array[0]}
