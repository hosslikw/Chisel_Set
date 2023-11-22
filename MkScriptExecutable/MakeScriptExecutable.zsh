result=""

for f in "$@"
do
    echo "$f"

    # Check if file has .sh, .scpt, or .bash extension
    if [[ "$f" == *.sh ]] || [[ "$f" == *.scpt ]] || [[ "$f" == *.bash ]] || [[ "$f" == *.py]] || [[ "$f" == *.pl ]] || [[ "$f" == *.jsx ]] || [[ "$f" == *.rb ]] [[ "$f" == *.php ]] ; then
        chmod +x "$f"

        # Check if file is truly executable
        if [ -x "$f" ]; then
            result="$result\n$f is now executable."
        else
            result="$result\nFailed to make $f executable."
        fi
    else
        result="$result\n$f does not have a recognized script extension."
    fi
done
echo "$result"
