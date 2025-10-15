# README for Username Validation Script

## Author Information
- **Name:** Nathaniel William Smith
- **Course:** CPSC-298: Intro to Nix
- **Assignment:** Username Validation
- **Date:** October 13, 2025

## Program Description
The program takes input from the user and checks it on a serieses of checks to make sure its a valid username. It works at a high level because it checks multiple conditions on one input into the if statement.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The scripts doesn't use the grep command it uses equals logic to test if the input gotten from the while loop fits the specifications of a valid username

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
- Two valid usernames that I used to test the program were jsmith and smith12. Both of these returned true because they used letters from a to z and number 0-9 and they started with lowercase letters. 
- Two not-valid usernames that I used to test the program was j2$ and jsmith123459632. One of the username has the correct length but not correct symbol and the other doesn't have the correct length. Both returned invalid
- To use the text file I just used ./username.sh<username-input
and it ran all of the text cases to make sure the validation worked and then after running the test cases I add the notReady=true to stop the loop after giving a valid test case.


## Resources
- I used Chatgpt to help me trouble shoot the certain syntaxes for if statements. I mainly used the given work in the assignment to complete it.

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
