#!/bin/bash

#Part 1
git fetch
git status

#Part 2
git diff > changes.log

#Part 3
grep "#TODO" . -R > todo.log

#Part 4
ghc -fno-code *.hs &> error.log