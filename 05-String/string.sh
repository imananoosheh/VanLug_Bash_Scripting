#!/usr/bin/bash

# String length
string="Welcome to VanLUG!"

echo "String Variable \"$string\" has: ${#string} characters"

echo "String Variable \"$string\" has: $(expr length "$string") characters"

# ask for why?
echo "String Variable \"$string\" has: $(echo "$string" | wc -m) characters"

echo "String Variable \"$string\" has: $(echo $string | awk '{print length}') characters"



#   String Split

# $IFS is a special internal variable which is used to split a string into words. $IFS variable is called 'Internal Field Separator' which determines how Bash recognizes boundaries. $IFS is used to assign the specific delimiter [ IFS='' ] for dividing the string. The white space is a default value of $IFS. However, we can also use values such as '\t', '\n', '-' etc. as the delimiter.

#   `read` is one of SHELL BUILTIN COMMANDS: access via `help read`
#   `read` BASIC OPTIONS
#   -a array: stores the results of the word split operation in an array rather than separate variables
#   –e: use the Bash built-in Readline library to read the input line
#   -s: does not echo the input line to the standard output stream
#   –p prompt: print the prompt text before requesting the input from the standard input stream without a <newline> character
#   –i text: print the text as default input on the standard output stream (can only be used in combination with -e)

#   `read` ADVANCED OPTIONS
#   -d delim: specify the delimiter of the input line rather than using the <newline> character
#   –u fd: read the input line from a given file descriptor
#   –r: treat the <backslash> character as it is (cannot be used for escaping special characters)
#   -t timeout: attempt to read the input for a given period of seconds
#   –N: read exactly N characters from the input unless a timeout occurs or EOF is reached


#Example for bash split string by space  

printf "\nParsing SPACE delimited text:$string\n"
#   IFS == Internal Field Separator
IFS=' ' #setting space as delimiter  
read -ra ADDR <<<"$string" #reading str as an array as tokens separated by IFS  

for i in "${ADDR[@]}"; #accessing each element of array  
do  
echo "$i"  
done

csv_data="hello,VanLug,How,Are,You,Doing?"
printf "\nParsing COMMA delimited text:$csv_data\n"
IFS=',' #setting space as delimiter  
read -ra ADDR <<<"$csv_data" #reading str as an array as tokens separated by IFS  

for i in "${ADDR[@]}"; #accessing each element of array  
do  
echo "$i"  
done
