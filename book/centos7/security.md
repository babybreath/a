# centos7 安全设置
[安全脚本](./security.sh)
## 取消不需要的用户和用户组

    vi /etc/passwd #删除或注释无用的用户
    vi /etc/group #删除或注释无用的用户组

    #或者直接使用命令删除
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

## 禁止响应ping

    echo "1"> /proc/sys/net/ipv4/icmp_echo_ignore_all

## 禁止Ctrl-Alt-Delete组合键重启系统

    rm /usr/lib/systemd/system/ctrl-alt-del.target
