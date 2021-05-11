#!/bin/bash
echo "Enter the date"
read $a=$`((date -d "+%d"))`
echo "Enter the month"
read $b=date -d +%m
echo "Enter the year"
read $c=date -d +%Y
echo "The date is $a:$b:$c"
