#!/bin/bash

IP=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

curl -s 'https://USERNAME:PASSWORD@domains.google.com/nic/update?hostname=WEBSITE&myip='$IP

echo ""
