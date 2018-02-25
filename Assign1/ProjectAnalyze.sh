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
echo "Enter characters to be reversed and printed in a temporary file?" | boxes
while read response;
do
	echo  ${response}|rev
done
