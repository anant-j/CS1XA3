#!/bin/bash

#Part 1
git fetch
git status

#Part 2
git diff >> changes.log

#Part 3
grep -r --exclude="todo.log" "#TODO" * >> todo.log

#Part 4
find . -iname "*.hs" -exec ghc -fno-code {} \; >> error.log
