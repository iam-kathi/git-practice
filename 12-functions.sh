#!/bin/bash

USERID=$(id -u)
#echo "User id is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Command is ..Failed"
    else 
        echo "Command is ..Success"
    fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root previleges"
    exit 1
fi

dnf list installed git 




if [ $? -ne 0 ]
then 
    echo "git is not installed,Going to install "
    dnf install git -y
    VALIDATE $? "Installinng Git"
else
    echo "git is already installed, Nothing to do "
fi

dnf list install mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed ,Going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MYSQL"
else
    echo "MYSQL is already installed, nothing to do "
fi