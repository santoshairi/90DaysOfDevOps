#!/bin/bash

SERVICE="nginx"
read -p "Do you want to check the status of $SERVICE? (y/n: " answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
	STATUS=$(systemctl is-active "$SERVICE")

	systemctl status "$SERVICE"

	if [[ "$STATUS" == "active" ]]; then
		echo "service $SERVICE is ACTIVE"
	else 
		echo "Service $SERVICE is Not active"
	fi	
elif [[ "$answer" == "n" || "$answer" == "N" ]]; then
	echo "skipped"
else
	echo "Invalid input please enter y or n "
fi 	


