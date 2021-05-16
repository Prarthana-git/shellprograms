#!/bin/bash -x

n=$1

function degF()
{
 degF=$((($n*9/5)+32))
 echo $degF
}
 
function degC()
{
 degC=$((($n-32)*5/9))
 echo $degC
}

select i in F C
do
case $i in
   F)
      degF
   ;;
   C)
      degC
   ;;
   *)
     echo"Nothing to do"
     exit
   ;;
esac
done
