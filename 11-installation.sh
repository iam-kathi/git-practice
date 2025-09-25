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
    dnf install git -y
    if [$? -ne 0]
    then
        echo "Git installation is not success...check it"
        exit 1
    else 
        echo "Git installation is success"
    fi
else
    echo "git is already installed, Nothing to do "
fi