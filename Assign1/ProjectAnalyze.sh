#!/bin/bash

#Part 1
git fetch
git status

#Part 2
git diff >> changes.log

#Part 3
grep -r --exclude="todo.log" "#TODO" * >> todo.log

#Part 4
ghc -fno-code *.hs $1 &>> error.log

#Part 5
echo "Would you like a print-out of the created files? (Y/N)" | boxes
while read response;
do
	if [ ${response} = "Y" ] || [ ${response} = "y" ]
	then
		echo
		echo -e "${BMAG}Contents of changes.log:${NORM}${REV}"
		cat changes.log
		echo -e "${NORM}"
		echo -e "${BMAG}Contents of todo.log:${NORM}${REV}"
                cat todo.log
                echo -e "${NORM}"
		echo -e "${BMAG}Contents of error.log:${NORM}${REV}"
                cat error.log
                echo -e "${NORM}"
		break
	elif [ ${response} = "N" ] || [ ${response} = "n" ]
	then
		echo "Thanks for using the Project Analyzer."
		break
	else
		echo -e "${BRED}Please enter either Y for yes or N for no.${NORM}"
	fi
done
