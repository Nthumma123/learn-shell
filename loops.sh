#!/bin/bash
#i am learning loops in shell scripting 

echo "Enter user name: $USERNAME"
read USERNAME
echo "Enter password:"

read -s PASSWORD

echo "i have a user $USERNAME"
starttime=$(date +%s)
echo "The current timestamp is $starttime"


for $app in ($@)
do
    echo "Installing application: $app"
    sudo apt-get install $app -y
    done
echo "All applications installed successfully!"
done

endtime=$(date +%s)
echo "The current timestamp is $endtime"

Total_time=$(($endtime - $starttime))
echo "Total time taken to install applications: $Total_time seconds"

$0 - script name
$1 - first argument to script
$2 - second argument to script
$@ - all arguments to script #mostly $@ is used in scripts
$* - all arguments as a single string
$# - number of arguments passed to script
$? - exit status of last command executed
$$ - process ID of the current script
$! - process ID of the last background command 

#array example
fruits=("apple" "banana" "cherry")
echo "First fruit: ${fruits[@]}"

# end of script