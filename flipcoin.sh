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

if [ ${array[0]} -gt ${array[1]} ]
then

echo ${array[0]} tail won the game

elif [ ${array[0]} -lt ${array[1]} ]
then

echo ${array[1]} head won the game

else
echo match is a tie

fi

value=1
array=(0 0)

while [ $value -eq 1 ]
do
random=$(( RANDOM%((1-0)+1)+0 ))
array[$random]=$(( ${array[$random]}+1 ))
if [ ${array[0]} -eq 21 ] || [ ${array[1]} -eq 21 ]
then
value=0
fi
done



if [ ${array[0]} -gt ${array[1]} ]
then

echo  tail won the game by $(( ${array[0]}-${array[1]} ))

else
echo head won the game by $(( ${array[1]}- ${array[0]} ))

fi


echo head occured ${array[1]}
echo tails occured ${array[0]}

if [ $(( ${array[0]}-${array[1]} )) -gt 0 -a $(( ${array[0]}-${array[1]} )) -lt 2 ] || [ $(( ${array[1]}-${array[0]} )) -gt 0 -a $(( ${array[1]}-${array[0]} )) -lt 2 ]
then
value=0

while [ $value -eq 0 ]
do
random=$(( RANDOM%((1-0)+1)+0 ))
array[$random]=$(( ${array[$random]}+1 ))
if [ $(( ${array[0]}-${array[1]} )) -ge 2 ]
then
value=1
fi
done
echo head occured ${array[1]}
echo tails occured ${array[0]}

fi

