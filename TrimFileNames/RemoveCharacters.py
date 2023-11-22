import os

directory = "/Users/Kyle/Teaching/Assets/InstagramTutorials"  # Replace with the directory path you want to modify

for filename in os.listdir(directory):
    file_path = os.path.join(directory, filename)

    if os.path.isfile(file_path):
        name, extension = os.path.splitext(filename)
        if len(name) > 11:
            new_name = name[:-11] + extension

            new_file_path = os.path.join(directory, new_name)

            os.rename(file_path, new_file_path)
    elif os.path.isdir(file_path):
        if len(filename) > 11:
            new_name = filename[:-11]
            new_file_path = os.path.join(directory, new_name)

              # Prompt the user for confirmation
            confirmation = input(f"Do you want to change the folder name from '{filename}' to '{new_name}'? (Y/n) ")

            if confirmation == "Y":
                os.rename(file_path, new_file_path)