#!/bin/bash

#Part 1
git fetch
git status

#Part 2
git diff > changes.log

#Part 3
grep -r --exclude="todo.log" "#TODO" * > todo.log

#Part 4
find . -name "*.hs" -exec ghc -fno-code {} \; &> error.log 

#Part 5
echo Enter a palindrome to create a new file with file information.
echo Ignore upper/lower case.Press enter after text input to proceed:
read -n 26 string
rm -rf $string.txt 
if [ "$(echo ${string,*} | rev)" = "${string,*}" ]
then
	echo "$string IS a Palindrome, a file named $string would be created"
	touch $string.txt
	today=`date +%Y-%m-%d`
	FILE1=changes.log
	FILES1="$(wc -c <$FILE1)"	
	FILE2=todo.log
        FILES2="$(wc -c <$FILE2)"
        FILE3=error.log
        FILES3="$(wc -c <$FILE3)"
        echo "This file was created on $today" >>$string.txt
	echo "Size of "$FILE1" = $FILES1 bytes." >>$string.txt
	echo "Size of "$FILE2" = $FILES2 bytes." >>$string.txt
	echo "Size of "$FILE3" = $FILES3 bytes." >>$string.txt 
	echo Do you want to commit this newly created $string.txt file to local repository ?"(Y/N)":
	read -n 1 option
	if [ "$({option,})"="y" ]
	then
        	git add $string.txt
        	git commit -m"Added file $string.txt for Assignment 1"
	else
        	echo Ok,the file wont be added and committed to the local repo.
	fi
else
	echo "$string IS NOT a Palindrome.A file won't be created"
fi
