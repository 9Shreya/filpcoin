#! /bin/bash

random=$(( RANDOM%((1-0)+1)+0 ))
echo $random
if [ $random -eq 1 ]
then
echo heads
else
echo tails
fi

