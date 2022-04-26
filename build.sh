#!/bin/bash

/usr/bin/echo "-----------FIREWALL CONFIGURATION-------" > /tmp/buildlog
/usr/bin/systemctl disable firewalld
/usr/bin/systemctl status firewalld >> /tmp/buildlog
/usr/sbin/iptables -F
/usr/sbin/sestatus >> /tmp/buildlog

/usr/bin/echo "-----------HOSTNAME CONFIGURATION -------" >> /tmp/buildlog
/usr/bin/hostname suri.ashok.ins.com
/usr/bin/cat /etc/hostname >> /tmp/buildlog
/usr/bin/echo "192.168.1.118    suri.ashok.ins.com      suri" >> /etc/hosts
/usr/bin/cat /etc/hosts >> /tmp/buildlog

/usr/bin/echo "------NETWORK SETUP-----" >> /tmp/buildlog
/usr/bin/cat /etc/sysconfig/network-scripts/ifcfg-roll >/etc/sysconfig/network-scripts/ifcfg-ens33
/usr/bin/cat /etc/sysconfig/network-scripts/ifcfg-ens33 >> /tmp/buildlog

/usr/bin/echo "---------NETWOR INTERFACE--------" >>/tmp/buildlog
/usr/sbin/ifconfig -a >>/tmp/buildlog

/usr/bin/echo "----------DISK PARTITION---------" >> /tmp/buildlog
/usr/sbin/parted -l >> /tmp/buildlog

/usr/bin/echo "------MOUNT FILE SYSTEM-------" >> /tmp/buildlog
/usr/bin/df -h >> /tmp/buildlog
/usr/bin/echo "#####################extra content#################" > /tmp/buildlog
this is satish
i am in hyd
living in chandanagar
learning linux
