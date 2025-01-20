#!/bin/bash

even_directory="even"
odd_directory="odd"

mkdir -p "$even_directory"
mkdir -p "$odd_directory"

for file in *.bin; do
    filename_no_extension=${file%.*}
    index=${filename_no_extension: -1}
    echo $index

    #if ((index % 2 == 0)); then
     #   mv "$file" "$even_directory/"
    #else
     #   mv "$file" "$odd_directory/"
    #fi
#done
