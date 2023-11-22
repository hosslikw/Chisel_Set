temp_file=$(mktemp "/tmp/oldnames.XXXXXX")
echo "$old_filenames" > "$temp_file"
while IFS= read -r line
do
    # Do something with $line, which contains each old filename.
done < "$temp_file"
rm "$temp_file"


set temp_file to do shell script "mktemp \"/tmp/oldnames.XXXXXX\""
do shell script "echo \"" & old_filenames & "\" > \"" & temp_file & "\""