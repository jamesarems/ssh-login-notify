#!/bin/bash
##SSH Login notify with two factor auth]\
 LOCATION=`pwd`
 LOG='/var/log'
 TIME=`date +"%Y_%m_%d_%I_%M_%p"`
 echo $RANDOM > $LOCATION/code.txt
 CODE=`cat $LOCATION/code.txt`
 echo "Linux Server OTP: $CODE " | mail -s "Server OTP" test@test.com
 echo "A mail has been send to your admin"
 read -p "Please type the code:" b
if [ "$b" == "$CODE" ]; then
 echo "Login Success"
 mv $LOCATION/code.txt $LOG/sln-code-$TIME.txt
else
 echo "This is very secure server, we are logging out you from server"
 logout
fi
