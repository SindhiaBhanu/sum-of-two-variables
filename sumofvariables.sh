#!/bin/bash
read -p "enter a num : " num
count=0
while [[ $count -lt $num ]]
do
        random=$(( $RANDOM % 3 ))
        x=$(( $RANDOM % 10 ))
        y=$(( $RANDOM % 10 ))
        sum=$(($x+$y))
        if [[ $sum -le 10 ]]
        then
                case $random in
                        0)
                                echo "_+$y=$sum";;
                        1)
                                echo "$x+_=$sum";;
                        2)
                                echo "$x+$y=_";;
                        *)
                                echo "invalid";;
                esac
                ((count++))
        fi
done
