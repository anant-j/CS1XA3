CS1XA3 - Assignment 1
=====================

## Part-1:Informs you if you're local repo is up to date with the remote repo

a)Used git fetch to sync local repository with global repository but not alter any files in the local repo.  
b)Used git status to check the status of current local repository.

---
## Part-2:Puts all uncommited changes in a file changes.log

a)Used git diff to track all uncommited changes.  
b)Used > to create a new file/overwrite the old file.  
c)Created the file changes.log

---
## Part-3:Puts each line from every file of your project with the tag #TODO into a file todo.log

a)Used grep command to find files with tag #TODO.  
b)Used > to create a new file/overwrite the old file.

## Part-4:Checks all haskell files for syntax errors and puts the results into error.log

a)Used find command to find the errors in Haskell file.  
b)Used > to create a new file/overwrite the old file.

---
## Part-5:Personal Feature

a)In this feature, the script checks for a user to input a palindrome(less than 26 characters or else it automatically proceeds-wrote 26 in [read -n 26 string])  
    * Used -n to wait for the user to input characters before proceeding.  
    * Used 26 characters before the program automatically proceeds.  
    * string is the variable used.  
b)If the text entered is a palindrome, the code proceeds or else it displays an error message.  
c)If the code proceeds, a new text file with the name of the entered palindrome is created.  
d)The date the document was created and the size of the 3 files created in Part 2,3 and 4 is appended in the newly created file.[Idea of date borrowed from :Ali Ameer Kariapper , https://github.com/Kariappa/CS1XA3.git]  
e)The file finally adds the newly created file via git add command.

---
## References:

a)Learnt the difference between > and >> through : https://serverfault.com/questions/196734/bash-difference-between-and-operator  
b)Check for palindrome and used in-built reverse function through https://phoxis.org/2010/01/26/bash-palindrome/  
c)Borrowed a part of Ali's Personal Feature, thanks for that : https://github.com/Kariappa/CS1XA3/blob/master/Assign1/ProjectAnalyze.sh  
d)Learned how to use IF/ELSE statements: https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php  
e)Learned how to use Markdown for readme file using Wikipedia: https://en.wikipedia.org/wiki/Markdown
---
## EXTRA REMOVAL.SH SCRIPT:

Created an extra Removal.sh script to remove the three files,namely changes.log, todo.log and error.log because it was a tedious process {if required} to remove them one by one.


