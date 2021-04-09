#!/bin/sh

for script in *.sql
do 
    echo "\nprocessing $script"
    mysql -u petmall_app "-ppetmall_pass" petmall_db < $script
    echo "$script ended\n"
done
