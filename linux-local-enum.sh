#!/bin/bash

##### (Cosmetic) Colour output
red=$(tput setaf 1)      # Issues/Errors
green=$(tput setaf 2)    # Success
yellow=$(tput setaf 3)   # Warnings/Information
blue=$(tput setaf 4)     # Heading
bold=$(tput bold  setaf 7)     # Highlight
reset=$(tput setaf 7)       # Norma

# Quick Linux Local Enumeration Script 
# v1.0

cat << "EOF"
                       .
                        `:.
                          `:.
                  .:'     ,::
                 .:'      ;:'
                 ::      ;:'
                  :    .:'
                   `.  :.
          _________________________
         :                         :
     ,---:      HighOn.Coffee      :
    : ,'"`:                       :'
    `.`.  `:                     :'
      `.`-._:                   :
        `-.__`.               ,' 
    ,--------`"`-------------'--------.
     `"--.__                   __.--"'
            `""-------------""'

EOF

printf "URL: $green http://highon.coffee $reset \n"

printf "Version: $yellow 1.0 $reset \n"

printf "Twitter: $blue @HighOn_Coffee $reset & $green @3isenHeiM $reset \n"
printf "Author: $blue @Arr0way $reset (forked by $green @3isenHeiM$reset) \n"

printf "Disclaimer: \n"
printf "\n"
printf "$red HighOn.Coffee is not responsible for misuse or for any damage that you may cause! \n
 You agree that you use this software at your own risk. $reset  \n"

sleep 1.2

printf "\n"
printf "\n"

sleep 0.2

# Logs output to enum.log
(

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Linux Version\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/bin/cat /etc/issue
printf "\n" 
/bin/cat /etc/*-release

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Kernel Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/uname -ar

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Network Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"


/bin/cat /etc/sysconfig/network
printf "\n"
/bin/cat /etc/resolv.conf
printf "\n"
/bin/cat /etc/sysconfig/network-scripts/ifcfg-eth0
printf "\n"
/sbin/ip
printf "\n"
/sbin/ifconfig
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red File System Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/df -h

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Mounted File Systems with Pretty Output"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/df -h

mount | column -t

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/fstab File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/cat /etc/fstab


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/passwd File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/passwd

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/passwd File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/shadow

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/group File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/group


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/sudoers File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/cat /etc/sudoers


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red root owned SUID Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -user root -perm -4000 -print 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red root owned GUID Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -group root -perm -2000 -print  2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red World Writable Directories"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/usr/bin/find / -perm -222 -type d 2>/dev/null  


printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red SUID Owned by any user\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/usr/bin/find / -perm -4000 -o -perm -2000 -print 2>/dev/null

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Files with no owner\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/usr/bin/find / -nouser -print 2>/dev/null

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Files with no group\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/usr/bin/find / -nogroup -print 2>/dev/null


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red World Writable FIles"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -type f -perm 0777 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Files Owned by Current User"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -user $(whoami) 2>/dev/null


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /home and /root Permissions"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/ls -ahlR /home/
/bin/ls -ahlR /root/ 


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/w


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Last Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/last

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Processes Running as root"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/ps -ef | /bin/grep root


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Installed Packages"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"


# GNU/Linux distribution identification based on: 
# https://unix.stackexchange.com/questions/6345/how-can-i-get-distribution-name-and-version-number-in-a-simple-shell-script 

if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS="Debian"
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    OS="SuSE"
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    OS="CentOS"
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
fi

printf "\n"
if [ $OS == "Debian" || $OS == "Ubuntu" ]; then
    /usr/bin/dpkg -l
elif [ $OS == "CentOS" || $OS == "RedHat" || $OS == "SuSE" ]; then
    /usr/bin/rpm -qa
else
    # Not identified GNU/Linux distribution
    printf "$red" 
    printf "MISSING $OS\n !!"
    printf "$reset"
fi

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Services starting at Boot"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"


if [ $OS == "Debian" || $OS == "Ubuntu" ]; then
    # From here : https://serverfault.com/a/723592/309985
    for i in `find /etc/rc*.d -name "S*"`; do basename $i | sed -r 's/^S[0-9]+//'; done | sort | uniq
elif [ $OS == "CentOS" || $OS == "RedHat" || $OS == "SuSE" ]; then
    chkconfig --list | grep $(runlevel | awk '{ print $2}'):on
else
    # Not identified GNU/Linux distribution
    printf "$red" 
    printf "MISSING $OS\n !!"
    printf "$reset"
fi

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red List of init Scripts aka System Services"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"


ls /etc/init.d/

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Device Summary"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

printf "$yellow Hostname:\t$reset"
hostname
printf "\n"
printf "$yellow Uptime:\t$reset"
w | grep up | awk '{print $1}'
printf "\n"

printf "$yellow Load:\t\t$reset"
w | grep -o "average:.*" | cut -d " " -f 2-
printf "\n"

printf "$yellow Manufacturer:\t$reset"
cat /sys/class/dmi/id/chassis_vendor
printf "\n"

printf  "$yellow Product Name:\t$reset"
cat /sys/class/dmi/id/product_name
printf "\n"

printf "$yellow Version:\t$reset"
cat /sys/class/dmi/id/product_version
printf "\n"

printf "$yellow Serial Number:\t$reset"
cat /sys/class/dmi/id/product_serial
printf "\n"

printf "$yellow Machine Type:\t$reset"
vserver=$(lscpu | grep Hypervisor | wc -l); if [ $vserver -gt 0 ]; then echo "VM"; else echo "Physical"; fi
printf "\n"

printf "$yellow OS:\t\t$reset"
hostnamectl | grep "Operating System" | cut -d ' ' -f5-
printf "\n"

printf "$yellow Kernel:\t$reset"
uname -r
printf "\n"

printf "$yellow Architecture:\t$reset"
arch
printf "\n"

printf "$yellow Processor:\t$reset"
awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'
printf "\n"

printf "$yellow Active User:\t$reset"
w | cut -d ' ' -f1 | grep -v USER | xargs -n1
printf "\n"

printf "$yellow IP(s):\t$reset"
hostname -I
printf "\n"


printf "$yellow Total Memory:\t$reset"
free -m | grep Mem | awk '{print $2,"MB" }'
printf "\n"

printf "$yellow Memory Usage:\t$reset"
free | awk '/Mem/{printf("%.2f%"), $3/$2*100}'
printf "\n"

printf "$yellow Swap Usage:\t$reset"
free | awk '/Swap/{printf("%.2f%"), $3/$2*100}'
printf "\n"

printf "$yellow CPU Usage:\t$reset"
cat /proc/stat | awk '/cpu/{printf("%.2f%\n"), ($2+$4)*100/($2+$4+$5)}' |  awk '{print $0}' | head -1
printf "\n"

printf "$blue Disk Usage\n$reset"
df -Ph -x squashfs -x tmpfs -x devtmpfs
printf "\n"




printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "$reset"

printf "\n More Linux enumeration commands can be found at: $blue https://highon.coffee/docs/linux-commands  \n"

printf "\n $red So long, and thanks for all the fish... \n $reset"
printf "\n"
# outputs to enum.log in current dir
) 2>&1 | /usr/bin/tee enum.log
