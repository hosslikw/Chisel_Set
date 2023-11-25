#!/bin/bash

# Set the source and output directories
input_dir="/Users/Kyle/Pictures/ScanToText"
output_dir="/Users/Kyle/Documents/ScriptOutput_ScanToText"
ebook_output="/Users/Kyle/Documents/ScriptOutput_ScanToText/EbookFinal"

# Ensure the output directory exists
mkdir -p "$output_dir"

# Image Enhancement using ImageMagick
echo "Enhancing images..."
mogrify -path "$output_dir" -density 300 -sigmoidal-contrast 1x0.1 -sharpen 0x0.7 -noise 1 -type Grayscale -format png -crop 96%+1%+1%+1%+1% -auto-orient "$input_dir"/*.png

# Perform OCR on the enhanced images
echo "Performing OCR..."
for image_file in "$output_dir"/*.png; do
    if [ "$image_file" != "$cover_image" ]; then
        base_name=$(basename "$image_file")
        base_name="${base_name%.*}"
        tesseract "$image_file" "$output_dir/$base_name" -l eng --psm 1 --dpi 300 --oem 3 -c tessedit_fix_fuzzy_spaces=1 -c enable_noise_removal=1 -c textord_interpolating_skew=1 -c crunch_leave_accept_strings=1 -c tessedit_write_block_separators=1 -c textonly_pdf=1 -c textord_oldbl_merge_parts=1
    fi
done

# Python script to convert text files and corresponding PNG images to HTML
python3 <<EOF
import os
from bs4 import BeautifulSoup

# Create a dictionary to store text content for each image file
image_text_mapping = {}

# Loop through files in the output directory
for filename in os.listdir("$output_dir"):
    if filename.endswith(".txt"):
        # If it's a text file, read its content and store it in the mapping
        with open(os.path.join("$output_dir", filename), "r") as txt_file:
            text_content = txt_file.read()
            image_name = os.path.splitext(filename)[0] + ".png"
            image_text_mapping[image_name] = text_content

# Loop through files again to create HTML files
for filename in os.listdir("$output_dir"):
    if filename.endswith(".png"):
        # If it's a png image file, get its name
        image_name = os.path.splitext(filename)[0] + ".png"
        text_content = image_text_mapping.get(image_name, "")

        # Create an HTML file with the image and corresponding text content
        html_content = f"<html><body><img src='{image_name}' alt='image'>{text_content}</body></html>"
        output_filename = os.path.splitext(filename)[0] + ".html"
        with open(os.path.join("$output_dir", output_filename), "w") as html_file:
            html_file.write(html_content)

# Create a list to store HTML file paths
html_files = []

# Loop through HTML files in the directory
for filename in os.listdir("$output_dir"):
    if filename.endswith(".html"):
        html_files.append(os.path.join("$output_dir", filename))

# Combine HTML content
combined_html = ""

for html_file in html_files:
    with open(html_file, "r", encoding="utf-8") as file:
        combined_html += file.read()

# Define the output combined HTML file path
output_file = "$output_dir/combined.html"

# Write the combined HTML to the output file
with open(output_file, "w", encoding="utf-8") as combined_file:
    combined_file.write(combined_html)
EOF

# Change the directory to the output
cd "$output_dir"

# Create the ebook
echo "Creating ebook..."
ebook-convert combined.html "${ebook_output}.epub" --output-profile="default" --embed-all-fonts --asciiize --insert-blank-line --subset-embedded-fonts --enable-heuristics --allow-local-files-outside-root

echo "Batch processing complete. Output ebook is located at ${ebook_output}.epub."

