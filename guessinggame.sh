#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Pleas enter your guess number"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Less than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greather than then true number"
        else
            echo " Congrats,you are right!"
        break;
        fi
    done
}
echo "Guess the files number in the current directory!"
guess
