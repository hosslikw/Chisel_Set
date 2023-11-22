import os

# ... previous steps ...

# Step 4: Edit filename based on user input
choice = input("Would you like to edit the beginning or the end of the file name? (Enter 'beginning' or 'end'): ")

if choice not in ['beginning', 'end']:
    print("Invalid choice. Please enter 'beginning' or 'end'.")
    exit(1)

num_chars = input("How many characters would you like to delete? ")

if not num_chars.isdigit():
    print("Please enter a valid number.")
    exit(1)
num_chars = int(num_chars)

# Extract filename without extension from the clean_name
filename_without_ext = os.path.splitext(clean_name)[0]

# Edit filename based on user input
if choice == "beginning":
    edited_name = filename_without_ext[num_chars:]
else:
    edited_name = filename_without_ext[:-num_chars]

print(edited_name)  # Just for confirmation; you can remove this later
