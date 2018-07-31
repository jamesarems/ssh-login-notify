#!/bin/bash
##SSH Login notify with two factor auth
 echo $RANDOM > /root/login/code.txt
 CODE=`cat /root/login/code.txt`
 echo "Linux Server OTP: $CODE " | mail -s "Server OTP" test@test.com
 echo "A mail has been send to your admin"
 read -p "Please type the code:" b
if [ "$b" == "$CODE" ]; then
echo "Login Success"
else
echo "This is very secure server, we are logging out you from server"
logout
fi
fi
