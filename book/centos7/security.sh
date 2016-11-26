#!/bin/sh

userdel lp
userdel shutdown
userdel halt
userdel operator
userdel games
userdel gopher

groupdel lp
groupdel uucp
groupdel games
groupdel dip

echo "1"> /proc/sys/net/ipv4/icmp_echo_ignore_all

rm /usr/lib/systemd/system/ctrl-alt-del.target
