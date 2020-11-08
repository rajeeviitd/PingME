#Tested on remote unix shell

#global variable accessible to both functions
files_pwd=$(ls -l | grep ^- | wc -l)
function guessing_game(){	

   if [[ $1 -lt $2 ]]          
    then
	echo "too low"
    elif [[ $1 -gt $2 ]]
    then
	echo "too high"
    else
	echo ""
	echo "congratulations!"
    fi				
}

while [[ $files_pwd -ne $guess ]]    
do
    read -p "how many files are in the current directory" guess
    # call guessing_game function
    echo $(guessing_game $guess $files_pwd)
    echo ""
done

