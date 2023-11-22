#!/usr/bin/env python3

import os
import subprocess
import plistlib
from pathlib import Path

# Function to read keywords from the file metadata and convert them to Finder tags


def convert_keywords_to_tags(file_path: Path) -> None:
    if not file_path.exists():
        raise ValueError(f"File does not exist: {file_path}")

    # Get the keywords using mdls, for XMP tags you might need a different command
    try:
        raw_keywords = subprocess.check_output(
            ['mdls', '-raw', '-name', 'kMDItemKeywords', str(file_path)],
            stderr=subprocess.STDOUT  # To capture all output including errors
        )
        # Decode byte string and handle the formatting
        keywords = raw_keywords.decode('utf-8').strip().strip('()').split(',')
        keywords = [keyword.strip() for keyword in keywords]
    except subprocess.CalledProcessError as e:
        print(f"Failed to get keywords for file: {
              file_path}\n{e.output.decode()}")
        return

    # Check if there are keywords to convert
    if not keywords or keywords == ['(null)']:
        print(f"No keywords found for file: {file_path}")
        return

    # Convert list of keywords to a binary plist
    tags_plist = plistlib.dumps(keywords, fmt=plistlib.FMT_BINARY)

    # Use xattr to write the tags as metadata to the file
    try:
        subprocess.check_call(
            ['xattr', '-wx', 'com.apple.metadata:_kMDItemUserTags',
             tags_plist.hex(), str(file_path)]
        )
        print(f"Converted keywords to Finder tags for file: {file_path}")
    except subprocess.CalledProcessError as e:
        print(f"Failed to set Finder tags for file: {file_path}\n{e}")


# Path to the image file
image_path = Path("/Users/Kyle/Desktop/Sorted/W0001.jpg")

# Call the function
convert_keywords_to_tags(image_path)
