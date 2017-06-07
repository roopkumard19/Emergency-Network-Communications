#!/bin/bash

# WLAN parameters
SSID="Docker"
HW_MODE="g"
CHANNEL="6"
PASSPHRASE="docker123"
WPA_MODE="WPA-PSK"

# Other parameters
SUBNET="192.168.0"
IP_AP="192.168.0.1"
NETMASK="/24"
DNS_SERVER="8.8.8.8"
DOCKER_NAME="ap-container"
CONF_FILE="hotspot-config.txt"
PATHSCRIPT=`pwd`
DOCKER_IMAGE=""
ROOT_UID="0"

if [ "$UID" -ne "$ROOT_UID" ] ; then
    echo "You must be root to run this script!"
    exit 1
fi

init () {

}

start () {

}

stop () {

}


if [ "$1" == "start" ]
then
    if [[ -z "$2" ]]
    then
        echo -e "[ERROR] No interface provided. Exiting..."
        exit 1
    fi
    IFACE=${2}
    stop "$IFACE"
    clear    
    init "$IFACE"
    start "$IFACE"
elif [ "$1" == "stop" ]
then
    if [[ -z "$2" ]]
    then
        echo -e "[ERROR] No interface provided. Exiting..."
        exit 1
    fi
    IFACE=${2}
    stop "$IFACE"
fi

