#!/bin/bash

even_directory="even"
odd_directory="odd"

mkdir -p "$even_directory"
mkdir -p "$odd_directory"

for electron_scattering_2023_sample_index_ in electron_scattering_2023_sample_index_*.bin; do
    index = (echo "$electron_scattering_2023_sample_index_" | grep -o '[0-9]\+')

    if ((index % 2 == 0)); then
        mv "$electron_scattering_2023_sample_index_" "$even_directory/"
    else
        mv "$electron_scattering_2023_sample_index_" "$odd_directory/"
    fi
done
