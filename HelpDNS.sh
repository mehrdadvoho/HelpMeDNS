#!/bin/bash


BLUE='\033[34m'
YELLOW='\e[33m'
GREEN='\033[0;32m'
NC='\033[0m'


echo -e "\n${BLUE}DNS options:${NC}"
items=("Set Shecan DNS" "Set 403_Online DNS" "Set Begzar DNS" "Set FoDev DNS" "Set Electrotm DNS" "Clear DNS")
for index in "${!items[@]}"; do
    echo -e "${YELLOW}$((index+1)). ${items[index]}${NC}"
done
read -p "Enter your choice (1-${#items[@]}): " choice


ip_address_Shecan=$(curl -s https://shecan.ir/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)
ip_address_403_online=$(curl -s https://api.anti403.ir/api/dns | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)
ip_address_Begzar=$(curl -s https://begzar.ir/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)
ip_address_FoDev="fodev.org:8118"
ip_address_Electrotm=$(curl -s https://electrotm.org/ | grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sort | uniq)


case $choice in
    1)
        printf "\nYou chose Shecan\n"
        echo "----------------------"
        printf "${GREEN}Shecan${NC}\n\n${BLUE}$ip_address_Shecan${NC}\n"
        ;;
    2)
        printf "\nYou chose 403_Online\n"
        echo "----------------------"
        printf "${GREEN}403Online${NC}\n\n${BLUE}$ip_address_403_online${NC}\n"
        ;;
    3)
        printf "\nYou chose Begzar\n"
        echo "----------------------"
        printf "${GREEN}Begzar${NC}\n\n${BLUE}$ip_address_Begzar${NC}\n"
        ;;
    4)
        printf "\nYou chose FoDev\n"
        echo "----------------------"
        printf "${GREEN}FreedomOfDevelopers${NC}\n\n${BLUE}$ip_address_FoDev${NC}\n"
        ;;
    5)
        printf "\nYou chose Electrotm\n"
        echo "----------------------"
        printf "${GREEN}Electrotm${NC}\n\n${BLUE}$ip_address_Electrotm${NC}\n"
        ;;
    6)
        printf "\nClear all the DNS settings\n"
        echo "----------------------"
        # Do something for Item 4
         ;;
    *)
        echo "Invalid choice"
        ;;
esac
