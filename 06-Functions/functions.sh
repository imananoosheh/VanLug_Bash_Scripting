#!/usr/bin/bash

    
v1='A'  
v2='B'  
    
my_var () {  
    local v1='C'  
    v2='D'  
    echo "Inside Function"  
    echo "v1 is $v1."  
    echo "v2 is $v2."  
}  
    
echo "Before Executing the Function"  
echo "v1 is $v1."  
echo "v2 is $v2."  
    
my_var  
echo "After Executing the Function"  
echo "v1 is $v1."  
echo "v2 is $v2."  


#   Setting up a return status for a function  

print_it () {  
    echo Hello $1  
    return 5  
}  

print_it VanLug!  
print_it World!  
echo The previous function returned a value of $?

#   Passing Argument and accessing inside funciton

print_args () {
    for arg in $@; do
    printf "$arg\t"
    done
    echo -e "\nArg at position 0 is: $0"
    echo -e "Arg at position 1 is: $1"
    echo -e "Arg at position 2 is: $2"
    echo -e "Arg at position 3 is: $3"
}

echo "Testing print_args function"
print_args VanLug for all and all for VanLug!