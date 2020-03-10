#!/bin/bash
# Description: Script to install and setup mysql instance
#

sudo apt update

aptupdateresult=$?

if [ $aptupdateresult -ne 0 ]; then
echo "there is problem updating apt"
exit 1
fi

sudo apt install mysql-server

mysqlinstallstatus=$?

if [ $mysqlinstallstatus -ne 0 ]; then
echo "there is problem installing mysql"
exit 1
fi
