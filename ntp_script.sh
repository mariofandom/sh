#!/bin/bash

sudo apt update
timedatectl
#timedatectl list-timezones
timedatectl list-timezones |grep Moscow
Europe/Moscow
timedatectl list-timezones |grep Kiev
Europe/Kiev
timedatectl set-timezone Europe/Moscow
timedatectl set-timezone Europe/Kiev
apt-get install ntp
sntp --version


echo "#pool 0.ubuntu.pool.ntp.org iburst
#pool 1.ubuntu.pool.ntp.org iburst
#pool 2.ubuntu.pool.ntp.org iburst
#pool 3.ubuntu.pool.ntp.org iburst
server 0.ru.pool.ntp.org
server 1.ru.pool.ntp.org
server 2.ru.pool.ntp.org
server 3.ru.pool.ntp.org" > $HOME/etc/ntp.conf
service ntp restart
service ntp status
systemctl enable ntp
