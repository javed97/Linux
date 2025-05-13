#! /bin/bash

echo "Welcome to the Useradd script:"
read -p "Username: " username
read -p 'Enter the password: ' password
sudo useradd $username
sudo passwd $password
echo "$username $password"
echo grep /etc/passwd/"$username"
#echo  "User added successfully"

