#! /bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d :"." -f1)
LOGFILE=/temp/SCRIPT_NAME-$TIMESTAMP.log 

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2...FAILURE"
    exit1
else
    echo "$2...SUCCESS"
fi 
}
if [ $USERID -ne 0 ]
then
    echo "please run these script withroot access"
    exit 1
else 
    echo "you are super user"
fi 

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y 
VALIDATE $? "Installing git"
