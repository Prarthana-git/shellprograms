#!/bin/bash -x

 for((i=0;i<=9;i++))
 do
    arr[i]=$(($RANDOM%1000))
 done
  echo ${arr[*]}
 for ((i=0;i<9;i++))
 do
   for ((j=0;j<9 ; j++))
   do
      if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
      then
         temp=${arr[j]}
         arr[$j]=${arr[$((j+1))]}
         arr[$((j+1))]=$temp
      fi
   done
done

echo "Array in sorted order"
echo ${arr[*]}

echo "2nd largest element" ${arr[8]}
echo "2nd smallest element" ${arr[1]}
