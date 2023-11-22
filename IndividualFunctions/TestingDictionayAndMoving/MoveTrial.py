import os
import shutil
import json

# Load the dictionary from the JSON file
with open("/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/dict.json", "r") as json_file:
    my_dict = json.load(json_file)

# Create all the necessary folders
for path in my_dict.values():
    os.makedirs(path, exist_ok=True)

# Specify the source folder where the files are located
source_folder = '/Users/Kyle/Desktop/Desktop'
for file_name in os.listdir(source_folder):
# Iterate over the files in the source folder
    file_path = os.path.join(source_folder, file_name)

    # Check if the file name contains any of the dictionary keys
    for key, path in my_dict.items():
        if key in file_name:
            destination = os.path.join(path, file_name)

            # Move the file to the destination folder
            shutil.move(file_path, destination)
            print(f"Moved {file_name} to {destination}")
            break  # Exit the loop after moving the file to the first matching destination
for folder_name in os.listdir(source_folder):
    folder_path = os.path.join(source_folder, folder_name)

    # Check if the file name contains any of the dictionary keys
    for key, path in my_dict.items():
        if key in folder_name:
            destination = os.path.join(path, folder_name)

            # Move the file to the destination folder
            shutil.move(folder_path, destination)
            print(f"Moved {folder_name} to {destination}")
            break  # Exit the loop after moving the file to the first matching destination