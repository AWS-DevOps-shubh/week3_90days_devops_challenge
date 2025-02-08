#! /bin/bash

echo "=======******** Creation of user ********==============="
# Create a function
create_user(){

read -p "Enter the username" username

read -s  -p "Enter the password" password   #(-s for password input hide)

echo

read -s -p "Confirm the password" password_confirm
echo

if [ "$password" != "$password_confirm" ]; then
        echo "Error: Passwords do not match!"
        exit 1
    fi
# Create the User
sudo useradd -m "$username"

# Set the Password for the user
echo "$username:$password" | sudo chpasswd   #chpasswd : Secure Password Handling   

echo "======********* Uesr Created successfuly *******========="
}
# call the function
create_user
