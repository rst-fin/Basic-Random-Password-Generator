#!/bin/bash

# Simple Password Generator
echo
echo "This is a basic random password generator"
echo
echo "Please enter a password length: "
read PASS_LENGTH
echo
for PASS in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

echo
echo "Pick one of the passwords above. Don't reuse passwords..."



