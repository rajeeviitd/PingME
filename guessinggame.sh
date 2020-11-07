#Tested on remote unix shell

#global variable accessible to both functions

files_pwd=$(ls -l |grep "^-"|wc -l)

function guessing_game(){	

   if [[ $1 -lt $2 ]]          
    then
	echo "Number less than real count, increment and guess again"
    elif [[ $1 -gt $2 ]]
    then
	echo "Number greater than real count, decrement and guess again"
    else
	echo ""
	echo "WOoo! Cogratulations won the game!"
    fi				
}

while [[ $files_pwd -ne $guess ]]    
do
    read -p "Guess how many files are in the pwd? " guess
    # call guessing_game function
    echo $(guessing_game $guess $files_pwd)
    echo ""
done

