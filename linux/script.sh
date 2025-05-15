#! /bin/bash

echo "Welcome to the Useradd script:"
read -p "Username: " username
if id $username &>/dev/null; then
	echo "$username already exists"
	exit 1
else
	if sudo useradd -m $username; then
		echo "Set password for $username: "
		sudo passwd $username
		
		if id $username &>/dev/null; then
			grep "^$username" /etc/passwd
			echo "User $username Added Successfully"
		else
			echo "User creation failed"
			exit 2
		fi
	else
		echo "Failed to add user. Check permissions or logs"
	exit 3

	fi
fi




