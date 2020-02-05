#!/bin/bash

##### (Cosmetic) Colour output
red=$(tput setaf 1)         # Issues/Errors
green=$(tput setaf 2)       # Success
yellow=$(tput setaf 3)      # Warnings/Information
blue=$(tput setaf 4)        # Heading
bold=$(tput bold setaf 7)   # Highlight
reset=$(tput setaf 7)       # Norma

echo -e "\n${red}-------------------------------System Information----------------------------${reset}"
echo -e "${yellow}Hostname:\t${reset}"`hostname`
echo -e "${yellow}Uptime:\t\t${reset}"`w | grep up | awk '{print $1}'`
echo -e "${yellow}Load:\t\t${reset}"`w | grep -o "average:.*" | cut -d " " -f 2-`
echo -e "${yellow}Manufacturer:\t${reset}"`cat /sys/class/dmi/id/chassis_vendor`
echo -e "${yellow}Product Name:\t${reset}"`cat /sys/class/dmi/id/product_name`
echo -e "${yellow}Version:\t${reset}"`cat /sys/class/dmi/id/product_version`
echo -e "${yellow}Serial Number:\t${reset}"`cat /sys/class/dmi/id/product_serial`
echo -e "${yellow}Machine Type:\t${reset}"`vserver=$(lscpu | grep Hypervisor | wc -l); if [ $vserver -gt 0 ]; then echo "VM"; else echo "Physical"; fi`
echo -e "${yellow}OS:\t\t${reset}"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e "${yellow}Kernel:\t\t${reset}"`uname -r`
echo -e "${yellow}Architecture:\t${reset}"`arch`
echo -e "${yellow}Processor Name:\t${reset}"`awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'`
echo -e "${yellow}Active User:\t${reset}"`w | cut -d ' ' -f1 | grep -v USER | xargs -n1`
echo -e "${yellow}IP address(es):\t${reset}"`hostname -I`
echo ""
echo -e "${red}-------------------------------CPU/Memory Usage------------------------------${reset}"
echo -e "${blue}Total Memory:\t${reset}"`free -m | grep Mem | awk '{print $2,"MB" }'`
echo -e "${blue}Memory Usage:\t${reset}"`free | awk '/Mem/{printf("%.2f%"), $3/$2*100}'`
echo -e "${blue}Swap Usage:\t${reset}"`free | awk '/Swap/{printf("%.2f%"), $3/$2*100}'`
echo -e "${blue}CPU Usage:\t${reset}"`cat /proc/stat | awk '/cpu/{printf("%.2f%\n"), ($2+$4)*100/($2+$4+$5)}' |  awk '{print $0}' | head -1`
echo ""
echo -e "${red}-------------------------------Disk Usage -----------------------------------${reset}"
df -Ph -x squashfs -x tmpfs -x devtmpfs
echo ""

