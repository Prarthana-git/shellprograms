#!/bin/bash -x
touch num.txt
Range=$((999-99+1))
N=5
i=1
while [ $i -le $N  ]
do
digit=$(($(($RANDOM%$Range))+99))
echo $digit
i=$((i+1))
echo $digit >> num.txt
done

max=$ cut -d " " -f 1 num.txt
min=$ cut -d " " -f 1 num.txt

for no in $(cat num.txt)
 do
   if [[ $no -gt $max ]] 
   then
           max=$no
   fi
 done

for no in $(cat num.txt)
 do
   if [[ $no -lt $min ]]
   then
         min=$no
   fi
 done

echo "Max no is" $max
echo "Min no is" $min
