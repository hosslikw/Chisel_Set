#!/bin/zsh

result=""
log_file="/Users/Kyle/log_file.txt"

for f in "$@"; do
    file_basename=$(basename "$f")
    echo "$file_basename" >>"$log_file"

    if [[ "$f" == *.sh ]] || [[ "$f" == *.scpt ]] || [[ "$f" == *.bash ]] || [[ "$f" == *.py ]] || [[ "$f" == *.pl ]] || [[ "$f" == *.jsx ]] || [[ "$f" == *.rb ]] || [[ "$f" == *.php ]]; then
        chmod +x "$f"
        if [ -x "$f" ]; then
            result="$result\n$file_basename is now executable."
            osascript -e "display dialog \"${file_basename}  :  is now executable.\" buttons {\"OK\"} default button 1 with title \"Script Notification\""
        else
            result="$result\nFailed to make $file_basename executable."
            osascript -e "display dialog \"Failed to make $file_basename executable.\" buttons {\"OK\"} default button 1 with title \"Error\""
        fi
    else
        result="$result\n$file_basename does not have a recognized script extension."
        osascript -e "display dialog \"${file_basename}  :  does not have one of the recognized script extensions.\" buttons {\"OK\"} default button 1 with title \"Error\""
    fi
done

echo "$result" >>"$log_file"
