import subprocess
import os
import logging

# Locates keywords in files.
# This function walks through the directory "/Users/Kyle/Desktop/Sorted" and
# its subdirectories, and searches for files. For each file found, it performs
# the following steps:
# 1. Records the keywords of each file from its XMP metadata and writes those keywords to the temporary file. The temporary file should show a list of each file's individual keywords.
# 2. Adds an Apple tag to each file for every keyword that it has. The name of the tags must match those of the keywords. For example, if the keyword is "Red", the tag must be "Red".
# If a file, file one, has the keywords "red" "big" "dog" and a second file, file two, has the keywords "big" "blue" "cat" the result of the script should be that file one has the tags "Red" "big" and "dog" and file two has the tags "big" "blue" and "cat".
# 3. The original keywords should not be removed.
# 4. Every step should be logged to the console and represent the acurate data being defined as variables and arguments.


def apply_tags(file_path, keywords):
    for keyword in keywords:
        tag_command = ["tag", "--add", keyword, file_path]
        try:
            subprocess.run(tag_command, check=True)
            logging.info(f"Tag '{keyword}' added to file: {file_path}")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to set Finder tag for file: {file_path}, with error: {e}")  # noqa


def keyword_log(directory_path):
    for root, _, files in os.walk(directory_path):
        for file in files:
            input_file_path = os.path.join(root, file)
            logging.info(f"Processing file: {input_file_path}")
            try:
                raw_keywords = subprocess.check_output(["exiftool", "-XMP:Subject", "-b", input_file_path], stderr=subprocess.STDOUT).decode().strip().split(',')  # noqa

                # Remove empty strings from keywords list
                keywords = [keyword.strip()
                            for keyword in raw_keywords if keyword.strip()]
                if keywords:
                    apply_tags(input_file_path, keywords)
                else:
                    logging.info(f"No keywords found for file: {input_file_path}")  # noqa
            except subprocess.CalledProcessError as e:
                logging.error(f"Exiftool error for file {input_file_path}: {e.output.decode()}")  # noqa
            except Exception as e:
                logging.error(f"Unexpected error for file {input_file_path}: {e}")  # noqa


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    directory_path = "/Users/Kyle/Desktop/Sorted"
    keyword_log(directory_path)
