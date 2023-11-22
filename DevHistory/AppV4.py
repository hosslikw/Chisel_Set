import os
import shutil
import json
from tkinter import *
from tkinter import Frame, Tk, Label, scrolledtext, BOTH, END, ttk
import fuzzywuzzy
from fuzzywuzzy import process
from watchdog.observers import Observer
import logging
from watchdog.events import FileSystemEventHandler
import time

logging.basicConfig(level=logging.INFO,
    format='%(asctime)s - %(message)s',
    datefmt='%Y-%m-%d%H:%M:%S')


with open("/Users/Kyle/Applications/OrganizingApp/Assets/dict.json", "r") as json_file:
		my_dict = json.load(json_file)

# Create all the necessary folders
for path in my_dict.values():
    os.makedirs(path, exist_ok=True)
    
source_folder = '/Users/Kyle/Applications/OrganizingApp/Assets/Start'

for file_name in os.listdir(source_folder):
    file_path = os.path.join(source_folder, file_name)

    # Check if the file name contains any of the dictionary keys
    for key, path in my_dict.items():
        if key in file_name:
            destination = os.path.join(path, file_name)
def handle_conflict(file_name):
     
window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("430x450")

my_notebook = ttk.Notebook (window)
my_notebook.pack (pady=15)

my_frame1 = Frame (my_notebook, width=430, height=450, bg="#1E1E1E")
my_frame2 = Frame (my_notebook, width=430, height=450, bg="#1E1E1E")

my_frame1.pack(fill="both", expand=1)
my_frame2.pack(fill="both", expand=1)

my_notebook.add(my_frame1, text="Doubles Trouble")
my_notebook.add(my_frame2, text="Confidence_Keys")

Gui_Header = Label(window, bd=0, text="Organizer:", font=("Avenir Next", 24),bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=28, pady=(10,0), anchor="w")

Gui_Subtitle = Label(window, bd=0, text="Unmoved Files:", font=("Avenir Next", 12),bg="#1E1E1E", fg="#AABBAA")
Gui_Subtitle.pack(padx=28, pady=(0, 10), anchor="w")

# Create a frame for the table
table_frame1 = Frame(my_frame1, bg="#1E1E1E")
table_frame1.pack(padx=28, pady=(10, 0), anchor="w")

table_frame2 = Frame(my_frame2, bg="#1E1E1E")
table_frame2.pack(padx=28, pady=(10, 0), anchor="w")

# Create label widgets for the headers
headers = ["File Name", "", "Options    "]

for i, header in enumerate(headers):
    header_label = Label(table_frame1, text=header, bd=0, font=("Avenir Next", 12), bg="#1E1E1E", fg="white")
    if i == 0:
        header_label.grid(row=0, column=i, padx=(0, 70), pady=0, sticky="w")
    elif i == len(headers) - 1:
        header_label.grid(row=0, column=i, padx=(0, 0), pady=0, sticky="e")
    else:
        header_label.grid(row=0, column=i, padx=10, pady=10)
  
    HeyDuplicate_label = Label(table_frame1, text="A file with the name '{file_name}' already exists in the destination folder", bd=0, font=("Avenir Next", 14),
                               bg="#1E1E1E", fg="white", anchor="w")
    choice1_label = Label(table_frame1, text= "Overwrite", bd=0, font=("Avenir Next", 14), 
                      bg="#1E1E1E", fg="white", anchor="w")
    choice2_label = Label(table_frame1, text="Skip", bd=0, font=("Avenir Next", 14), 
                      bg="#1E1E1E", fg="white", anchor="w")

    HeyDuplicate_label.grid(row=0, column=0, padx=(0, 90), pady=0, sticky="w")       
    choice1_label.grid(row=0, column=2, padx=(0, 90), pady=0, sticky="w")
    choice2_label.grid(row=1, column=2, padx=10, pady=0, sticky="w")
    

overwrite_button = Button(table_frame1, text="Overwrite", command=handle_overwrite)
overwrite_button.grid(row=2, column=2, padx=(0, 90), pady=10, sticky="w")

skip_button = Button(table_frame1, text="Skip", command=handle_skip)
skip_button.grid(row=2, column=3, padx=10, pady=10, sticky="w")
    
class MyHandler(FileSystemEventHandler):
    def on_modified(self, event):
        if event.is_directory:
            return
        file_name = os.path.basename(event.src_path)
        if file_name not in failed_files:
            return

failed_files = []
for file_name in os.listdir(source_folder):
    basename = os.path.splitext(file_name)[0]
    fuzzyname = basename[-6:]

    if fuzzyname not in my_dict.keys():
        failed_files.append(file_name)

for i, file_name in enumerate(failed_files):
    basename = os.path

for i, file_name in enumerate(failed_files):
    basename = os.path.splitext(file_name)[0]  # Get the base filename
    last_six_digits = basename[-6:]  # Get the last 6 digits

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
	
        
event_handler = MyHandler()
observer = Observer()
observer.schedule(event_handler, source_folder, recursive=False)
observer.start()

try:
    while observer.is_alive():
        time.sleep(1)
except KeyboardInterrupt:
    observer.stop()
observer.join()
window.mainloop()