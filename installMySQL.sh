#!/bin/bash
# Description: Script to install and setup mysql instance
#

sudo apt update

aptupdateresult=$?

if [[ $aptupdateresult -ne 0 ]]; then
echo "there is problem updating apt"
fi

sudo apt install mysql-server

mysqlinstallstatus=$?

if [[ $mysqlinstallstatus -ne 0 ]]; then
echo "there is problem installing mysql"
fi