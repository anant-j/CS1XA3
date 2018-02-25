#!/bin/bash

#Part 1
git fetch
git status

#Part 2
git diff > changes.log

#Part 3
grep -r --exclude="todo.log" "#TODO" * > todo.log

#Part 4
ghc -fno-code *.hs $1 & > error.log

#Part 5
echo Enter a palindrome to create a new file with file information.Ignore capitalization.
read -n 20 string
rm ~/CS1XA3/Assign1/"$string".txt 
if [ "$(echo ${string,*} | rev)" = "${string,*}" ]
then
	echo "$string IS a Palindrome, a file named $string would be created"
	touch ~/CS1XA3/Assign1/"$string".txt
	today=`date +%Y-%m-%d`
	echo "This file was created on $today" >>~/CS1XA3/Assign1/"$string".txt
	FILE1=~/CS1XA3/Assign1/changes.log
	FILES1="$(wc -c <"$FILE1")"	
	echo "Size of $FILE1 = $FILES1 bytes." >>~/CS1XA3/Assign1/"$string".txt
	FILE2=~/CS1XA3/Assign1/todo.log
        FILES2="$(wc -c <"$FILE2")"
        echo "Size of $FILE2 = $FILES2 bytes." >>~/CS1XA3/Assign1/"$string".txt
	FILE3=~/CS1XA3/Assign1/error.log
        FILES3="$(wc -c <"$FILE3")"
        echo "Size of $FILE3 = $FILES3 bytes." >>~/CS1XA3/Assign1/"$string".txt 
	git add ~/CS1XA3/Assign1/$string.txt
	git commit -m"Added files for Assign 1"
else
	echo "$string IS NOT a Palindrome.A file won't be created"
fi
