#!/bin/bash
# quick way to commit all changes
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
fi
git add -A && git ci -m "$1"
