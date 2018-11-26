#! /bin/bash
for ip in `cat ip.txt`
do a=`ping -c 1 $ip|grep loss|awk '{print $8}'|awk -F "%" '{print $1}'`
   b=`ping -c 1 $ip|grep loss|awk '{print $6}'|awk -F "%" '{print $1}'`
 if [ $a -eq 100 ]||[ $b -eq 100 ];then 
  echo $ip is down >> /iperror
 else
  echo $ip is up >> /ipok
 fi
 done
