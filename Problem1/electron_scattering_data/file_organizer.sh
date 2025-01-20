#!/bin/bash

even_directory="even"
odd_directory="odd"

mkdir -p "$even_directory"
mkdir -p "$odd_directory"

for file in electron_scattering_2023-10-04_sample_index*.bin; do
    index=$(echo "$file" | grep -oP 'sample_index\K\d+')

    if ((index % 2 == 0)); then
        mv "$file" "$even_directory/"
    else
        mv "$file" "$odd_directory/"
    fi
done
