#!/bin/bash

usage() {
        echo "Usage: $0 <project-name> <entry-file>"
        exit 1
}

[ "$#" != "2" ] && usage

mkdir -p projects/$1
touch projects/$1/requirements.txt
touch projects/$1/$2

echo "docker run -v `pwd`projects/$1:/code pythonbox $2" > projects/$1/start.sh

echo "project $1 build in project/$1" 
