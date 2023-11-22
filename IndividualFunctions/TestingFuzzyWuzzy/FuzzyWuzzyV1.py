from fuzzywuzzy import process
import os
import json
from tkinter import Frame, Tk, Label, scrolledtext, BOTH, END

# Load the dictionary from the JSON file
with open("/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingFuzzyWuzzy/dict.json", "r") as json_file:
    my_dict = json.load(json_file)

source_folder = '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingFuzzyWuzzy/Test_FuzzyWuzzy'

# Create Tkinter GUI window
window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("700x591")

Gui_Header = Label(window, bd=0, text="Organizer:", font=("Avenir Next", 24),bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=28, pady=(10,0), anchor="w")

Gui_Subtitle = Label(window, bd=0, text="Unmoved Files:", font=("Avenir Next", 12),bg="#1E1E1E", fg="#AABBAA")
Gui_Subtitle.pack(padx=28, pady=(0, 30), anchor="w")

text_frame = Frame(window, bd=0, highlightthickness=0.5, highlightbackground="#373737")
text_frame.pack(fill=BOTH, expand=True, padx=28, pady=(10, -0))

Gui_Body = scrolledtext.ScrolledText(text_frame, bd=0, highlightthickness=0, font=("Avenir Next", 15), fg="white",)
Gui_Body.pack(fill=BOTH, expand=False, pady=(2, 0))

indentation = " " * 8

failed_files = []  # List to store the files that failed to match a key

# Find the files that failed to match a key
for file_name in os.listdir(source_folder):
    base_file_name = os.path.splitext(file_name)[0]  # Get the base filename
    last_six_digits = base_file_name[-6:]  # Get the last 6 digits

    # Check if the last 6 digits match any of the keys
    if last_six_digits not in my_dict.keys():
        failed_files.append(file_name)

# Find the two most associated keys for each failed file
for file_name in failed_files:
    base_file_name = os.path.splitext(file_name)[0]  # Get the base filename
    last_six_digits = base_file_name[-6:]  # Get the last 6 digits

    matches = process.extract(last_six_digits, my_dict.keys(), limit=2)

    output_line = f"{file_name}\n"
    Gui_Body.insert(END, indentation + output_line)

    for match in matches:
        output_line = f"Associated key: {match[0]}\n"
        Gui_Body.insert(END, indentation + output_line)

window.mainloop()