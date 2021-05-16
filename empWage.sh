#!/bin/bash -x

IS_FULLTIME=1
IS_PARTTIME=2
Emp_RATE_PER_HR=20
empCheck=$((RANDOM%3))

case $empCheck in
    $Is_FLLTIME)
    empHrs=8
    ;;
    $IS_PARTTIME)
    empHrs=4
    ;;
    *)
    empHrs=0
    ;;
wage=$(($EMP_RATE_PER_HR*$empHrs))
