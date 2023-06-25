#!/bin/bash

# curl -s https://shecan.ir/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq

BLUE='\033[34m'
YELLOW='\e[33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "\n${BLUE}DNS options:${NC}"
echo -e "${YELLOW}1. Set Shecan DNS"
echo "2. Set Begzar DNS"
echo "3. Set Electrotm DNS"
echo "4. Set FoDev DNS"
echo "5. Set 403_Online DNS"
echo -e "6. Clear DNS${NC}"
read -p "Enter your choice (1, 2,... or 3): " dns_choice

ip_address_Shecan=$(curl -s https://shecan.ir/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)
ip_address_Begzar=$(curl -s https://begzar.ir/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)
ip_address_Electrotm=$(curl -s https://electrotm.org/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)
ip_address_FoDev="fodev.org:8118"


echo "----------------------"
printf "${GREEN}Shecan${NC}\n\n${BLUE}$ip_address_Shecan${NC}\n"
echo "----------------------"
printf "${GREEN}Begzar${NC}\n\n${BLUE}$ip_address_Begzar${NC}\n"
echo "----------------------"
printf "${GREEN}Electrotm${NC}\n\n${BLUE}$ip_address_Electrotm${NC}\n"
echo "----------------------"
printf "${GREEN}FreedomOfDevelopers${NC}\n\n${BLUE}$ip_address_FoDev${NC}\n"
echo "----------------------"
