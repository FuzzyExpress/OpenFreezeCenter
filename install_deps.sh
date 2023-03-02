#!/bin/bash

install etc/modprobe.d/ec_sys.conf /etc/modprobe.d/ec_sys.conf
install etc/modules-load.d/ec_sys.conf /etc/modules-load.d/ec_sys.conf
modprobe ec_sys write_support=1
GRUB_CMDLINE_LINUX_DEFAULT="quiet ec_sys.write_support=1"
sudo apt-get install python3-tk -y