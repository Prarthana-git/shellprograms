#!/bin/bash -x
select i in inches-feet feet-inches feet-meter meter-feet
do
case $i in
  inches-feet)
     read n
     value=$(( $n / 12 ))
     echo "Inches-feet" $value
   ;;
  feet-inches)
    read n
    value=$(( $n * 12 ))
    echo "feet-inches" $value
   ;;
  feet-meter)
    read n
    value=$(( $n / 3 ))
    echo "feet-meter" $value 
   ;;
  meter-feet)
    read n
    value=$(( $n * 3 ))
    echo "meter-feet" $value
   ;;
  *)
    echo" no conversion "
   ;;
esac
done
