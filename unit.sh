#!/bin/bash -x
read -p "Enter  number " n
a=1000
b=100
c=10
select i in Th H T U
do
case $i in
     Th)
        val=$(($n/$a))
        echo $val "Thousands"
     ;;
     H) 
       val=$(((($n/$b))%$c))
       echo $val "Hundred"
     ;;
     T)
       val=$(((($n/$c))%$c))
       echo $val "Ten"
     ;;
     U)
       val=$(($n%$c))
       echo $val "Unit"
     ;;
     *)
       echo "Default"
     ;;
esac
done
