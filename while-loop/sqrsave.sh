#!/bin/bash -x

n=$1
res=0
for (( i=$n; i>=1; i-- ))
do
   if [ $(($i & ($i-1))) -eq 0 ]
   then
   res=$i
   break
   fi
done
 echo $res


