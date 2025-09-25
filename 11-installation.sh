#!/bin/bash

USERID=$(id -u)
#echo "User id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root previleges"
    exit 1
fi

dnf list install git 
if [ $? -ne 0 ]
then 
    echo "git is not installed,Going to install "
    dnf install git  
else
    echo "git is already installed,GNothing to do "
fi