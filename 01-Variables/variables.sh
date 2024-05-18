#!/usr/bin/bash

#   add execution permission to the file before run

#   System-Defined Variables

echo "HOME variable's value:\t" $HOME
echo "PATH variable's value:\t" $PATH
echo "SHELL variable's value:\t" $SHELL

#   User-Defined Variables

myfirstname=Iman

mylastname=Anoosheh

echo "My name is :$myfirstname $mylastname"

#   To make a persistent environment variables

nano ~/.bashrc