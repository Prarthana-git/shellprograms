#!/bin/bash -x
n=$1
rev=0
temp=$n
function Pal()
{
 while [ $n -gt 0 ]
 do
  rem=$(( $n % 10 ))
  rev=$((($rev*10)+$rem))
  n=$(( $n / 10 ))
 done 
echo $rev
}
result="$(Pal)"

if [ $temp -eq $result ] 
then
   echo "Number is palindrome"
else
   echo "Number is not palindrome"
fi
