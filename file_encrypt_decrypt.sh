#!/bin/bash

echo "       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          #######################
             #################
                ###########
                   #####
                    ##
           @Created BY ABU TALHA"

echo "#####  help people! #####"
echo "File Encrypt/Decrypt"

echo "plese choose what you want to do"

choice="Encrypt Decrypt"

select option in $choice; do
	if [ $REPLY = 1 ]
then 
	echo "You have selected Encryption"
    echo "please enter a file name: "
    read file
    gpg -c $file
    echo "the file has been encrypted"
 else
 	echo "You have been selected Decryption"
 	echo "Please enter a file name: "
 	read file2
 	gpg -d $file2
 	echo "the file has been decrypted"
 fi

done
