import os
import subprocess

def convert_keywords_to_tags(file_path):
    # Check if the file exists
    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        return
    
    # Get the keywords associated with the file
    try:
        keywords = subprocess.check_output(['mdls', '-raw', '-name', 'kMDItemOMUserTags', file_path])
        keywords = keywords.decode('utf-8').strip()
    except subprocess.CalledProcessError:
        print(f"Failed to get keywords for file: {file_path}")
        return
    
    # Split the keywords into a list
    keywords_list = keywords.split(',')
    
    # Remove leading and trailing whitespaces from keywords
    keywords_list = [keyword.strip() for keyword in keywords_list]
    
    # Check if there are keywords to convert
    if not keywords_list:
        print(f"No keywords found for file: {file_path}")
        return
    
    # Set Finder tags based on keywords
    try:
        subprocess.check_call(['xattr', '-w', 'com.apple.metadata:_kMDItemUserTags', f'({", ".join(keywords_list)})', file_path])
        print(f"Converted keywords to Finder tags for file: {file_path}")
    except subprocess.CalledProcessError:
        print(f"Failed to set Finder tags for file: {file_path}")

# Example usage:
file_path = '/path/to/your/file.txt'
convert_keywords_to_tags(file_path)