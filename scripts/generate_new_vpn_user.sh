#!/bin/bash

USERNAME="$1"
PASSWD="$2"
useradd "$USERNAME"
echo -e "$PASSWD\n$PASSWD" | passwd "$USERNAME"
curl -k -s -o ${USERNAME}_vpn_login.ovpn -u "$USERNAME:$PASSWD" https://sud-vpn.ddns.net:943/rest/GetUserlogin
curl -k -s -o ${USERNAME}_vpn_login.ovpn -u "$USERNAME:$PASSWD" https://sud-vpn.ddns.net:943/rest/GetUserlogin
