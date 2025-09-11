# This is a program to put together
# all the other conditional programs i've written in this directory!

#!/bin/bash

# Section 1: get file age
read -p "How many days old is this file? " file_age
if [ $file_age -ge 30 ]; then
 echo "This file is outdated."
else
 echo "This file is 'young'."
fi

# interval:
sleep 3

# Section 2: get file size
read -p "What unit size is your file? (kB; B; MB; GB; TB) " file_size
if [ "$file_size" = "kB" ] || [ "$file_size" = "B" ]; then
 echo "The file is kinda small."
elif [ "$file_size" = "MB" ]; then
 echo "The file is of average size."
elif [ "$file_size" = "GB" ] || [ "$file_size" = "TB" ]; then
 echo "This file is huge!"
else
 echo "Intriguing unit."
fi

# interval:
sleep 3

# Section 3: get file type
# Ask for the file's type
read -p "What type of file is it? (.txt; .docx; .bat; .sh; other) " file_type

# Check the file type and give an appropriate comment
case $file_type in
 .txt|.docx)
  echo "Perhaps you're working on a novel :-)"
  ;;
 .bat|.sh)
  echo "What code have you written this time, Tech bro?"
  ;;
 other)
  echo "Please specify the actual file type."
  ;;
 *)
  echo "Please choose a valid option."
  ;;
esac

sleep 3

# Section 4: wanna document?

read -p "Do you want to record the file's details? (y/n) " bin_ans
if [ "$bin_ans" = "y" ]; then
 touch file_details.log
# This log will contain the file's identity.
# I have to work on this part!
# add sth like "echo ... > file_details.log"
fi

# Shd anythn else be here?
# end for now
