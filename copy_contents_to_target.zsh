#!/usr/bin/env zsh

# Specify the source file
source_file="index.html"

# Specify the target directory
target_directory="recipes/"

#Loop through all the files in the target directory and copy contents
for file in ${target_directory}/*; do
	if [[ -f "$file" ]]; then
		cat "$source_file" > "$file"
	fi
done
