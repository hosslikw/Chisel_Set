
# Import the necessary libraries
import os
import shutil
import fuzzywuzzy
from tkinter import *
from tkinter import scrolledtext
import subprocess
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import json
import logging

# Configure the logging settings
logging.basicConfig(filename='error.log', level=logging.ERROR)

# Specify the path to your JSON file
try:
    with open("/Users/Kyle/Teaching/OrganizingApp/descriptors.JSON", "r") as json_file:
        data = json.load(json_file)
    descriptors = data.get("descriptors", {})
except Exception as e:
    logging.error(str(e))

# Folder to monitor
folder_path = '/Users/Kyle/Teaching/TestFiles'

# Custom event handler for file system events
class FileHandler(FileSystemEventHandler):
    def __init__(self):
        self.output = ""
        
    def on_created(self, event):
        if not event.is_directory:
            file_name = os.path.basename(event.src_path)
            for descriptor, path in descriptors.items():
                try:
                    if descriptor in file_name:
                        destination = os.path.join(path, file_name)
                        shutil.move(event.src_path, destination)
                        self.output += f"Organizer has moved {file_name} to {path}\n"
                        break
                except Exception as e:
                    logging.error(str(e))
                    
                    if descriptor not in file_name:
                        self.output += f"{file_name} does not contain {descriptor}\n"
                        similarity_score = fuzzywuzzy.ratio(descriptor, file_name)
                        try:
                            if similarity_score > 0.8:
                                self.output += f"{descriptor}\n"
                        except Exception as e:
                            logging.error(str(e))

    def on_modified(self, event):
        self.output += f"File modified: {event.src_path}\n"
        
# Create an instance of the FileHandler class
event_handler = FileHandler()

# Create an observer to watch the folder
observer = Observer()
observer.schedule(event_handler, folder_path, recursive=True)
if observer.is_alive():
    print("The observer is currently watching the folder.")
else:
    print("The observer is not currently watching the folder.")
observer.start()

# Create the Tkinter window
window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("450x300")

# Create a Label widget to display the header
Gui_Header = Label(window, bd=0, text="Organizer:", font=("Avenir Next", 24),bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=28, pady=(10, 0), anchor="w")

# Create a frame to contain the Text widget
text_frame = Frame(window, bg="#1E1E1E", bd=0, highlightthickness=0)
text_frame.pack(fill=BOTH, expand=True)

# Create a Text widget to display the output of the event handler
Gui_Body = scrolledtext.ScrolledText(text_frame, bd=0, highlightthickness=0, font=("Avenir Next", 15), fg="white")
Gui_Body.pack(fill=BOTH, expand=True, pady=(22, 0))

# Get the output from the event handler
output = event_handler.output

# Set the indentation within the Text widget
indentation = " " * 8

# Insert the output instances into the Text widget with indentation
for item in output:
    Gui_Body.insert(END, indentation + item + "\n")

# Keep the window open
window.mainloop()

except Exception as e:
    logging.error(str(e))tput 
# Sets the indentation within the Text widget
indentation = " " * 8
# Inserts the output instances into the Text widget with indentation
for item in  output:
    Gui_Body.insert(END, indentation + item + "\n")
# loops the funtion of tkinter to keep the window open
window.mainloop()

except Exception as e:
logging.error(str(e))