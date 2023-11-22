import os
import subprocess

# The tagging list
tags = ["Red", "Blue", "Green", "Brown", "Black",
        "Purple", "Yellow", "Pink", "White"]


def apply_tags(directory, tags):
    # Track the index of the next tag to use
    tag_index = 0

    # loop through the directory
    for root, dirs, files in os.walk(directory):
        for name in files:
            # Form the full file path
            file_path = os.path.join(root, name)

            # Apply the tag to the file
            tag_command = ["tag", "--add", tags[tag_index], file_path]
            subprocess.run(tag_command, check=True)

            # Move to the next tag,
            tag_index += 1
            if tag_index >= len(tags):
                return


# Replace /path/to/directory
apply_tags('/path/to/directory', tags)