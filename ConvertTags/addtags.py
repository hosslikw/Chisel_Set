import os
import subprocess

# The tagging list
tags = ["Red", "Blue", "Green", "Brown", "Black",
        "Purple", "Yellow", "Pink", "White", "Umber"]


def apply_tags(directory, tags):
    # Track the index of the next tag to use
    tag_index = 0

    # Walk through the directory
    for root, dirs, files in os.walk(directory):
        for name in files:
            # Form the full file path
            file_path = os.path.join(root, name)

            # Apply the tag to the file
            tag_command = ["tag", "--add", tags[tag_index], file_path]
            subprocess.run(tag_command, check=True)

            # Move to the next tag, and if we've used all, exit the loop
            tag_index += 1
            if tag_index >= len(tags):
                return


# Replace '/path/to/directory' with the path to the directory you want to tag
apply_tags('/Users/Kyle/Desktop/Sorted', tags)
