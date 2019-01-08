  1 #!/bin/bash
  2 for ip in 192.168.222.{1..100};
  3 do
  4   ping $ip -c 2 &> /dev/null;
  5   if [ $? -eq 0 ];
  6   then
  7      echo $ip is alive  >> alive.txt
  8   else
  9      echo $ip is down   >> down.txt
 10   fi
 11 done
