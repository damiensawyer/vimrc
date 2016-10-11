#!/bin/bash
# quick way to commit all changes
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
fi
git add -A && git ci -m "$1"
