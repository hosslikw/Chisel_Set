#!/usr/bin/env zsh

input_file="$1"
filename=$(basename "$input_file")
extension="${filename##*.}"

#If the file has an extension, remove it from the filename for cleaning
if [[ "$filename" != "$extension" ]]; then
	filename="${filename%.*}"
fi

#Remove all non-alphanumeric characters from the filename
cleaned_filename="${filename//[^a-zA-Z0-9]/}"

#If there was an extension, append it back
if [[ "$input_file" != "$extension" ]]; then
	cleaned_filename="${cleaned_filename}.${extension}"
fi

#Rename the file on the desktop
mv "$input_file" "$(dirname "$input_file")/$cleaned_filename"

echo "File renamed to: $cleaned_filename"
