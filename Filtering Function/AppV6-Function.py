import os
import shutil
import json
import logging

logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(message)s',
                    datefmt='%Y-%m-%d%H:%M:%S')

# Load the dictionary from the JSON file
with open("/Users/Kyle/Applications/Ref_OrganizingApp/App/Dict.json", "r") as json_file:
    my_dic = json.load(json_file)

source_folder = "/Users/Kyle/Desktop/Desktop"

# Create directories for all values in my_dic
for path in my_dic.values():
    os.makedirs(path, exist_ok=True)

# Go through all files in the source folder
for file_name in os.listdir(source_folder):
    # Get the root of the filename (without extension) and then its last 5 characters
    root = os.path.splitext(file_name)[0]
    ot = root[-5:]

    # Check if ot exists in my_dic's keys, if yes, move the file
    destination_path = None
    for key, value in my_dic.items():
        if ot.lower() in key.lower():
            destination_path = value
            break

    if destination_path:
        logging.info(f"Moving {file_name} to {destination_path}")
        shutil.move(os.path.join(source_folder, file_name), destination_path)
    else:
        logging.warning(f"'{ot}' not found in my_dic for file {file_name}")
