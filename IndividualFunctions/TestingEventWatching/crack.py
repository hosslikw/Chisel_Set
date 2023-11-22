import os
import shutil
import json
import logging
import time
from tkinter import *
from tkinter import Frame, Tk, Label, scrolledtext, BOTH, END, ttk
from fuzzywuzzy import process
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(message)s',
                    datefmt='%Y-%m-%d%H:%M:%S')

with open("/Users/Kyle/Applications/OrganizingApp/Assets/dict.json", "r") as json_file:
    my_dict = json.load(json_file)

source_folder = '/Users/Kyle/Applications/OrganizingApp/Assets/Start'

passed_files = []
failed_files = []
passed_folders = []
failed_folders = []

# Create all the necessary folders
for path in my_dict.values():
	os.makedirs(path, exist_ok=True)
class MyHandler(FileSystemEventHandler):
    def on_modified(self, event):
        for file_name in os.listdir(source_folder):
            file_path = os.path.join(source_folder, file_name)
            basename, extension = os.path.splitext(file_name)
            descriptor = basename[-7:]
            if descriptor in my_dict:
                path = my_dict[descriptor]
                destination_path = os.path.join(path, file_name)
                passed_files.append((file_path, destination_path))
            else:
                failed_files.append(file_name)
        for folder_name in os.listdir(source_folder):
            folder_path = os.path.join(source_folder, folder_name)
            folder_tail = folder_name[-7:]
            if folder_tail in my_dict:
                path = my_dict[descriptor]
                destination = os.path.join(path, folder_name)
                passed_folders.append((folder_path, destination_path))
            else:
                failed_folders.append(folder_name)

        for passed_files in os.listdir(source_folder):
            if passed_files not in os.listdir(destination_path):
                shutil.move(file_path, destination)
        for passed_folders in os.listdir(source_folder):
            if passed_folders not in os.lstdir(destination_path):
                shutil.move(folder_path, destination)

def handle_overwrite():
    global file_path, destination
    if file_path and destination:
                # Implement overwrite logic here
        shutil.move(file_path, destination)

def handle_skip():
    global file_path
    if file_path:
         pass
         
# Create a tkinter window
window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("430x450")

my_notebook = ttk.Notebook(window)
my_notebook.pack(pady=15)

my_frame1 = Frame(my_notebook, width=430, height=450, bg="#1E1E1E")
my_frame2 = Frame(my_notebook, width=430, height=450, bg="#1E1E1E")

my_frame1.pack(fill="both", expand=1)
my_frame2.pack(fill="both", expand=1)

my_notebook.add(my_frame1, text="Doubles Trouble")
my_notebook.add(my_frame2, text="Confidence_Keys")

Gui_Header = Label(my_frame1, bd=0, text="Organizer:", font=("Avenir Next", 24), bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=28, pady=(10, 0), anchor="w")

Gui_Subtitle = Label(my_frame1, bd=0, text="Unmoved Files:", font=("Avenir Next", 12), bg="#1E1E1E", fg="#AABBAA")
Gui_Subtitle.pack(padx=28, pady=(0, 10), anchor="w")

# Create a frame for the table
table_frame1 = Frame(my_frame1, bg="#1E1E1E")
table_frame1.pack(padx=28, pady=(10, 0), anchor="w")

# Define headers
headers = ["File Name", "", "Options"]

# Create labels for headers
for i, header in enumerate(headers):
    header_label = Label(table_frame1, text=header, bd=0, font=("Avenir Next", 12), bg="#1E1E1E", fg="white")
    if i == 0:
        header_label.grid(row=0, column=i, padx=(0, 70), pady=0, sticky="w")
    elif i == len(headers) - 1:
        header_label.grid(row=0, column=i, padx=(0, 0), pady=0, sticky="e")
    else:
        header_label.grid(row=0, column=i, padx=10, pady=10)

# Create labels and buttons for file handling
file_label = Label(table_frame1, text="File Name", bd=0, font=("Avenir Next", 14), bg="#1E1E1E", fg="white", anchor="w")
choice1_label = Label(table_frame1, text="Overwrite", bd=0, font=("Avenir Next", 14), bg="#1E1E1E", fg="white", anchor="w")
choice2_label = Label(table_frame1, text="Skip", bd=0, font=("Avenir Next", 14), bg="#1E1E1E", fg="white", anchor="w")

file_label.grid(row=1, column=0, padx=(0, 90), pady=0, sticky="w")
choice1_label.grid(row=1, column=2, padx=(0, 90), pady=0, sticky="w")
choice2_label.grid(row=1, column=3, padx=10, pady=0, sticky="w")

# Create buttons for file handling
overwrite_button = Button(table_frame1, text="Overwrite", command=handle_overwrite)
overwrite_button.grid(row=2, column=2, padx=(0, 90), pady=10, sticky="w")

skip_button = Button(table_frame1, text="Skip", command=handle_skip)
skip_button.grid(row=2, column=3, padx=10, pady=10, sticky="w")


event_handler = MyHandler()
observer = Observer()
observer.schedule(event_handler, source_folder, recursive=False)
observer.start()
# Loop the tkinter GUI
window.mainloop()

try:
    while observer.is_alive():
        time.sleep(1)
except KeyboardInterrupt:
    observer.stop()
observer.join()
window.mainloop()