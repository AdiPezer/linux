#!/bin/bash
echo 'display all connections including TCP and UDP netstat -a or netstat -all.'

netstat -all 
echo

echo 'netstat --tcp or netstat -t display only TCP connection.'

netstat -t
echo

echo 'netstat --udp or netstat -u display only UDP connection.'

netstat -u
echo

echo 'netstat -g display all multicast network subscribed by this host.'

netstat -g
echo

echo 'netstat -l list only listening ports.'

netstat -l
echo


