#!/bin/bash -x
names=(abc 5661 xqw 6 pqr 654)

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Grapes"

echo "Fruits array::"${Fruits[@]}
echo ${names[*]}
