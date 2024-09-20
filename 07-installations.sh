#! /bin/bash

USERID=$(id -u)

if [$USERID -ne 0 ]
then 
    echo "please run this script with root access"
    exit 1 # manually error comes
else
    "echo you are a super user."

fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql... Failure"
    exit 1
else
    echo "Installation of mysql...success"
fi

dnf install git -y

if[ $? -ne 0 ]
then
    echo "Installation of git... failure"
    exit1
else 
    echo "installation of git... Success"
fi
echo "is script proceeding?"