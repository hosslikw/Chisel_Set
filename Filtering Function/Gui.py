import json
import logging
from tkinter import *
from fuzzywuzzy import process
from tkinter import Frame, Tk, Label, scrolledtext, BOTH   

def handle_button_click():
def handle_overwrite(file_path, destination):
    if file_path and destination:
        shutil.move(file_path, destination)


def handle_skip(file_path):
    if file_path:
        pass


window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("400x450")

# The code `my_frame = Frame(wimdow, bd=0, bg="#1E1E1E")` creates a frame widget called `my_frame`
# with a black background color (`bg="#1E1E1E"`) and no border (`bd=0`).
# The code `my_frame = Frame(wimdow, bd=0, bg="#1E1E1E")` creates a frame widget called `my_frame`
# with a black background color (`bg="#1E1E1E"`) and no border (`bd=0`).
my_frame = Frame(window, bd=0, bg="#1E1E1E")
my_frame.pack(fill="both", expand=1)

Gui_Header = Label(my_frame, bd=0, text="Organizer:", font=(
    "Avenir Next", 24), bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=30, pady=(20, 0), anchor="w")

Gui_Subtitle = Label(my_frame, bd=0, text="Unmoved Files:", font=(
    "Avenir Next", 12), bg="#1E1E1E", fg="#AABBAA")
Gui_Subtitle.pack(padx=30, pady=(10, 0), anchor="w")

table_frame = Frame(my_frame, bd=3, bg="#1E1E1E")
table_frame.pack(fill="both", expand=True, anchor="w")

headers = ["", "", ""]
for i, header in enumerate(headers):
    header_label = Label(table_frame, text=header, bd=1, font=(
        "Avenir Next", 12), bg="#1E1E1E", fg="white")
    if i == 0:
        header_label.grid(row=0, column=i, padx=(0, 0), pady=0, sticky="w")
    elif i == len(headers) - 1:
        header_label.grid(row=0, column=i, padx=(0, 0), pady=0, sticky="e")
    else:
        header_label.grid(row=0, column=i, padx=0, pady=0)

header_label_frame2 = Label(table_frame, text=header, bd=0, font=(
    "Avenir Next", 12), bg="#1E1E1E", fg="white")
header_label_frame2.grid(row=0, column=0, padx=(0, 90), pady=0, sticky="w")

file_label = Label(table_frame, text="failed_files[0]", bd=1, font=(
    "Avenir Next", 14), bg="#1E1E1E", fg="white", anchor="w")
file_label.grid(row=1, column=0, padx=(28, 30), pady=0, sticky="w")

overwrite_button = Button(
    table_frame, text="Overwrite", command=lambda: handle_overwrite)
overwrite_button.grid(row=1, column=2, padx=(70, 0), pady=0, sticky="w")

skip_button = Button(table_frame, text="Skip", command=lambda: handle_skip)
skip_button.grid(row=3, column=2, padx=(100, 0), pady=10, sticky="w")

matches = process.extract(descriptor, my_dict.keys(), limit=2)
file_label = Label(table_frame, highlightthickness=2, text=failed_files, bd=1, font=("Avenir Next", 14),
                   bg="#1E1E1E", fg="white", anchor="w")
# key2_label = Label(table_frame, text="", highlightthickness=2, bd=1, relief="solid", font=("Avenir Next", 14),
#                   bg="#1E1E1E", fg="white", anchor="w")
matches_label = Label(table_frame, bd=1, highlightthickness=2, font=("Avenir Next", 14),
                      bg="#1E1E1E", fg="white", anchor="w")

matches_text = ", ".join([match[0] for match in matches])
matches_label.config(text=matches_text)

file_label.grid(row=i+5, column=0, padx=(90, 90), pady=(10, 10), sticky="w")
# key2_label.grid(row=i+5, column=3, padx=(0,0), pady=(10, 10), sticky="w")
matches_label.grid(row=i+5, column=2, padx=(40, 0), pady=(100, 10), sticky="w")
