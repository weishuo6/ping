#!/bin/bash
for ip in 192.168.222.{1..10};
do 
  ( 
     ping $ip -c 2 &> /dev/null;
     if [ $? -eq 0 ];
     then
       echo $ip is alive  >> alive.txt
     else
       echo $ip is down   >> down.txt
     fi
   )&
   done
wait
#要使ping命令可以并行执行，可将循环体放入()&。()中的命令会在子shell中运行，而&会将其置入后台。
