#!/bin/bash
#num variable holding the input number
num = $1


if [num > 0] ; then
    echo "The number is positive"
elif [ num < 0 ] ; then
    echo "The number is negative"
else
    echo "the number is zero"
fi 

# end of script

if [ $? != 0] ; then
    echo "script ended with errors"
    exit 1
else
    echo "script successfully executed"
fi

