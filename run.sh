#!/bin/bash
# Author: Yevgeniy Goncharov aka xck, http://sys-adm.in
# Remove MS Office login cache
# Reference: https://answers.microsoft.com/en-us/msoffice/forum/all/just-downloaded-office-for-mac-student-edition/237364a1-bff0-4d33-bb5b-517dfa5e7080

# Sys env / paths / etc
# ---------------------------------------------------------------------\

PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd); cd $SCRIPT_PATH

# Vars
# ---------------------------------------------------------------------\

CONTAINER_PATH="~/Library/Group\ Containers"
FILE_LIST=$SCRIPT_PATH/file-list.txt

#  Acts

for file in $(cat ${FILE_LIST}); do
    echo "Searching file: ${file}"
    find ~/Library/Group\ Containers/ -name ${file} -exec rm -rf {} \; 2>&1 | grep -v 'not permitted'
done

echo "Done."
