#!/bin/bash

USERID=$(id -u)
#echo "User id is: $USERID"

VALIDATE(){
    if[ $1 -ne 0 ]
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

VALIDATE $?


# if [ $? -ne 0 ]
# then 
#     echo "git is not installed,Going to install "
#     dnf install git -y
#     if [$? -ne 0]
#     then
#         echo "Git installation is not success...check it"
#         exit 1
#     else 
#         echo "Git installation is success"
#     fi
# else
#     echo "git is already installed, Nothing to do "
# fi

# dnf list install mysql

# if [ $? -ne 0 ]
# then
#     echo "MYSQL is not installed ,Going to install"
#     dnf install mysql -y
#     if [$? -ne 0]
#     then
#         echo "MYSQL installation is not success..check it"
#         exiit 1
#     else 
#         echo "MYSQL installation is success"
#     fi
# else
#     echo "MYSQL is already installed, nothing to do "
# fi