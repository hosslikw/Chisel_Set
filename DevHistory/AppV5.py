
import os
import shutil
import fuzzywuzzy import process
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import json
import logging
from tkinter import Frame, Tk, Label, scrolledtext, BOTH   

# Configure the logging settings
logging.basicConfig(filename='error.log', level=logging.ERROR)

# Specify the path to your JSON file
try: # Load the dictionary from the JSON file
with open("/Users/Kyle/Applications/OrganizingApp/dict.json", "r") as json_file:
    my_dict = json.load(json_file)
except Exception as e:
    logging.exception(str(e))

# Create all the necessary folders
for path in my_dict.values():
    os.makedirs(path, exist_ok=True)

# Specify the source folder where the files are located
source_folder = '/Users/Kyle/Dropo'

window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("430x450")

# Custom event handler for file system events
class FileHandler(FileSystemEventHandler):
    def __init__(self):
        self.output = ""
        
# Iterate over the files in the source folder
for file_name in os.listdir(source_folder):
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
                    
         if descriptor not in file_name:
        self.output += f"{file_name} does not contain {descriptor}\n"
         similarity_score = fuzzywuzzy.ratio(descriptor, file_name)
try:
     if similarity_score > 0.8:
    self.output += f"{descriptor}\n"
            except Exception as e:
                logging.exception(str(e))

# Create an instance of FileHandler
event_handler = FileHandler()

# Create an instance of Observer
observer = Observer()

# Set the folder path
folder_path = '/Users/Kyle/Teaching/TestFiles'

# Schedule the event handler with the observer
observer.schedule(event_handler, folder_path, recursive=True)

try:
    observer.start()
    print("The observer is currently watching the folder.")
except RuntimeError as e:
    print("The observer is already running.")

Gui_Header = Label(window, bd=0, text="Organizer:", font=("Avenir Next", 24),bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=28, pady=(10,0), anchor="w")

Gui_Subtitle = Label(window, bd=0, text="Unmoved Files:", font=("Avenir Next", 12),bg="#1E1E1E", fg="#AABBAA")
Gui_Subtitle.pack(padx=28, pady=(0, 10), anchor="w")

# Create a frame for the table
# Create a frame for the table
table_frame = Frame(window, bg="#1E1E1E")
table_frame.pack(padx=28, pady=(10, 0), anchor="w")

# Create label widgets for the headers
headers = ["File Name", "", "Closest Working Keys    "]

# Create label widgets for the headers
for i, header in enumerate(headers):
    header_label = Label(table_frame, text=header, bd=0, font=("Avenir Next", 12), bg="#1E1E1E", fg="white")
    if i == 0:
        header_label.grid(row=0, column=i, padx=(0, 70), pady=0, sticky="w")
    elif i == len(headers) - 1:
        header_label.grid(row=0, column=i, padx=(0, 0), pady=0, sticky="e")
    else:
        header_label.grid(row=0, column=i, padx=10, pady=10)

# Find the failed files
failed_files = []
for file_name in os.listdir(source_folder):
    base_file_name = os.path.splitext(file_name)[0]  # Get the base filename
    last_six_digits = base_file_name[-6:]  # Get the last 6 digits

    # Check if the last 6 digits match any of the keys
    if last_six_digits not in my_dict.keys():
        failed_files.append(file_name)

# Populate the table with data
for i, file_name in enumerate(failed_files):
    base_file_name = os.path.splitext(file_name)[0]  # Get the base filename
    last_six_digits = base_file_name[-6:]  # Get the last 6 digits

    matches = process.extract(last_six_digits, my_dict.keys(), limit=2)
	# Create label widgets for the data
    file_label = Label(table_frame, text=file_name, bd=0, font=("Avenir Next", 14), 
                      bg="#1E1E1E", fg="white", anchor="w")
    key2_label = Label(table_frame, text="", bd=0, font=("Avenir Next", 14), 
                      bg="#1E1E1E", fg="white", anchor="w")
    matches_label = Label(table_frame, bd=0, font=("Avenir Next", 14), 
                          bg="#1E1E1E", fg="white", anchor="w")

	# Concatenate the matches into a single string
    matches_text = ", ".join([match[0] for match in matches])

	# Set the text for the matches label
    matches_label.config(text=matches_text)

	# Place the labels in the table
    file_label.grid(row=i+1, column=0, padx=(0, 90), pady=0, sticky="w")
    key2_label.grid(row=i+1, column=1, padx=10, pady=0, sticky="w")
    matches_label.grid(row=i+1, column=2, padx=(50,0), pady=(0,0), sticky="w")
window.mainloop()