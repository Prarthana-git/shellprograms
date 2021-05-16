#!/bin/bash -x
n=$1
temp=$n
rev=0
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

#Prime function

function Prime()
{
for ((i=2; i<=n/2; i++))
do
   res=$(($n%i))
done
echo $res
}
 result2="$(Prime)" 
 if [ $result2 -eq 0 ]
 then
     echo "$n is not a prime number"
     ev=0
  else
     echo "$n is Prime number"
     ev=$n
 fi
  
if [ $result -eq $ev ]
then
  echo "Palindrom no is also prime no"
 else
  echo "Palindrom and prime no does not match"
fi
