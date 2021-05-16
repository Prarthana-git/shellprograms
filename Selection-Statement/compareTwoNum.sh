#!/bin/bash -x
x=10
y=10

if [ $x -gt $y ]
then
   echo $x is greater than $y
elif [ $x -eq $y ]
then
   echo $x is equal to $y
else
   echo $y is greater than $x
fi    
