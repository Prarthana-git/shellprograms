#!/bin/bash -x

#costants
IS_FULLTIME=1
IS_PARTTIME=2
MAX_HRS_IN_MONTH=20
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=5

#variables
totalEmpHrs=0
totalworkingDays=0

declare -A empDailyWage

function getworkingHours()
{
 case $1 in
    $Is_FLLTIME)
      empHrs=8
    ;;
    $IS_PARTTIME)
      empHrs=4
    ;;
    *)
      empHrs=0
    ;;
  esac
  echo $empHrs
}
function calculateDailywage()
{
workHrs=$1
wage=$(($workHrs*$EMP_RATE_PER_HR))
echo $wage
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && 
         $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalworkingDays++))
    empCheck=$((RANDOM%3))
    workHours="$( getworkingHours $empCheck )"
    totalEmpHrs=$(($totalEmpHrs+$workHours))
    empDailyWage[$totalworkingDays]="$( calculateDailywage $workHours )"
done
wage=$(($EMP_RATE_PER_HR*$totalEmpHrs))
echo "Daily wage ::" ${empDailyWage[@]}
echo "Days ::" ${!empDailyWage[@]}
