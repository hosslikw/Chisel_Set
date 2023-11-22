import os
from tkinter import *
from tkinter import scrolledtext

# Function to get the list of directories in the home directory
def get_directory_list():
    home_dir = os.path.expanduser("~")
    output = os.listdir(home_dir)
    return output

# Create the Tkinter window
window = Tk()
window.configure(bg="#1E1E1E", bd=0)
window.geometry("450x300")


# Create a Label widget to display the header
Gui_Header = Label(window, bd=0, text="Home Organizer:", font=("Avenir Next", 24),bg="#1E1E1E", fg="white")
Gui_Header.pack(padx=28, pady=(10, 0), anchor="w")

# Create a frame to contain the Text widget
text_frame = Frame(window, bg="#1E1E1E", bd=0, highlightthickness=0)  # Set highlightthickness=0 to remove the border
text_frame.pack(fill=BOTH, expand=True)

# Create a Text widget to display the directory list
Gui_Body = scrolledtext.ScrolledText(text_frame, bd=0, highlightthickness=0, font=("Avenir Next", 15), fg="white",)
Gui_Body.pack(fill=BOTH, expand=True, pady=(22, 0))


# Call the function to get the directory list
output = get_directory_list()

# Set the indentation
indentation = " " * 8

# Insert the directory list into the Text widget with indentation
for item in output:
    Gui_Body.insert(END, indentation + item + "\n")


# Start the Tkinter event loop
window.mainloop()