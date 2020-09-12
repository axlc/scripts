#!/bin/bash
# This script will find all git repositories on your system and output the results to a file in the user's home directory

CUR_DIR=$(pwd)

echo -e "\n\033[1mSearching for all git repositories on your system...\033[0m\n"

for d in $(find / -name .git -type d 2>/dev/null); do 
    cd $d/..
    git remote -v >> ~/remote.txt
done

expand -t 1 ~/remote.txt | tr -s ' ' | cut -d ' ' -f 2 | sort | uniq 

cd $CUR_DIR

echo -e "\n\033[32mDone!\033[0m\n"                                                                                 

