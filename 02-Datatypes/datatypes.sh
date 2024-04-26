#!/usr/bin/bash

#   When you use `./scriptname.sh` it executes with /bin/bash as in the first line with #!.
#   But when you use `sh scriptname.sh` it executes sh, not bash.

string_1=string1
string_2="string 2"
int_1=5
int_2=11
float_1=3.14

#   could be define with `declare -a` command
array_1=($string_1 $string_2 $int_1 $int_2 $float_1)

echo $string_1$string_2
echo $int_1 + $int_2 " = " $(($int_1 + $int_2 ))
echo $float_1

#   Bash doesn't have floating-point types, but you can use a calculator such as `bc`
echo $float_1 + $float_1 | bc


echo ${array_1[@]}