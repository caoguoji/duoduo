#!/usr/bin/bash
 
for ip in `cat /opt/ip.txt`
do
        {
        ping -c1 -W1 $ip &>/dev/null 
        if [ $? -eq 0 ];then
                echo "$ip" >> success.txt 
        else 
            echo "$ip" >> fail.txt 
        fi
        }&
done
wait 
echo "finish"
