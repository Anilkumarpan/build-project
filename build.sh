#!/bin/bash
/usr/bin/echo "=====================DISABLING FIREWALLS====================" > /var/tmp/scriptlog
/usr/bin/systemctl disable firewalld 
/usr/bin/systemctl status firewalld >> /var/tmp/scriptlog
/usr/sbin/iptables -F
/usr/sbin/sestatus >> /var/tmp/scriptlog

/usr/bin/echo "===============HOSTNAME SETUP=================" >> /var/tmp/scriptlog
/usr/bin/hostname  scriptserver2.ashok.ins.com
/usr/bin/echo "scriptserver2.ashok.ins.com" > /etc/hostname
/usr/bin/hostname >> /var/tmp/scriptlog
/usr/bin/echo "192.168.1.137	scriptserver2.ashok.ins.com	scriptserver2" > /etc/hosts
/usr/bin/cat /etc/hosts >> /var/tmp/scriptlog

/usr/bin/echo "================NETWORK SETUP=============" >>  /var/tmp/scriptlog
/usr/bin/cat /var/tmp/ifcfg-ens33 > /etc/sysconfig/network-scripts/ifcfg-ens33
/usr/sbin/ifconfig -a >> /var/tmp/scriptlog

/usr/bin/echo "=================SYSTEM INFORMATION===========" >>/var/tmp/scriptlog
/usr/bin/df >> /var/tmp/scriptlog
/usr/sbin/parted -l >> /var/tmp/scriptlog
/usr/bin/netstat -rn >> /var/tmp/scriptlog

/usr/bin/echo "============USER INFORMATON============" >> /var/tmp/scriptlog
/usr/bin/cat /etc/passwd >> /var/tmp/scriptlog
/usr/bin/cat /etc/shadow >> /var/tmp/scriptlog
/usr/bin/cat /etc/group >> /var/tmp/scriptlog



/usr/bin/systemctl restart network
/usr/sbin/reboot 



HI THIS IS SURESH
IM NEW TO HERE
WORKING AT IBM
CURRENTLY LEARNIG GIT REPOSITORY FROM REMOTE MODE
USED BY THE TOOL IS GIT
SKILLS LINUX, DEVOPS, CLOUD ETC....
