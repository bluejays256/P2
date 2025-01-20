#! /bin/bash
echo "Enter a directory path to delete the files in."
file_remove(){
    find "$1" -maxdepth 1 -name '*.bin' | xargs rm -f 
}

file_remove "$1"