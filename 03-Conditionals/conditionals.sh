#!/usr/bin/bash

# NOTE: Whitespace between the condition and the brackets are important!
#   if [_EXPRESSION_];
#   then
#       commands
#   elif [_EXPRESSION_];
#   then
#       commands
#   else
#       commands
#   fi


#   Receives an input and saves in number variable
read -p " Enter number : " number  

#   Checks if value entered is greater than 125
if [ $number -gt 125 ];
then  
    echo "Value is greater than 125"  
fi


# Define a string
input_string="Hello"

# Check if the string is non-zero
if [ -n "$input_string" ]; then
    echo "The string is non-zero in length."
else
    echo "The string is zero in length."
fi

# Check if the file example.txt exists in the current directory
if [ -e "example.txt" ];
then
    echo "File example.txt exists."
else
    echo "No File Exists!"
fi