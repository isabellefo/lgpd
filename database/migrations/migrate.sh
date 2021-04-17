#!/bin/sh

scripts=$(ls *.sql *.py | sort -n -t _ -k 1)

for script in $scripts
do 
    echo "\033[34m\nprocessing \"$script\"\033[0m"

    extension="${script##*.}"
    if [ "$extension" = "sql" ]; then
        mysql -u petmall_app "-ppetmall_pass" petmall_db < $script
    else
        python3 $script
    fi

    if [ "$?" = "0" ]; then
        echo "\033[32m$script: OK\n\033[0m"
    else
        echo "\033[31m$script: ERROR\n\033[0m"
    fi
done