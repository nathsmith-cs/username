#!/bin/bash
# insurance.sh
# Nate Smith
# CPSC 298
#!/bin/bash


notReaady=true

while [[ $notReady != false ]];do
    echo "The only characters that can be used are lower case letters,
    digits, and the underscore character
    It must start with a lower case letter
    It must contain at least three but no more than 12 characters"
    echo "$n Enter in your username: "
    read -r username

    if [[ $username =~ ^[a-z][a-z0-9_]{2,11}$ ]];then 
        echo "true {$username} is a valid username"
        echo "Thank you!"
        notReady=false
    else 
        echo "false {$username} is not a valid username"
        echo "Remember..."
    fi
done
