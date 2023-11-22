#!/bin/bash

# Extract width and height of the image
width=$(identify -format "%w" "$f")
height=$(identify -format "%h" "$f")

# Determine the center and the radius as half of the smaller dimension
if [ $width -lt $height ]; then
    radius=$((width / 2))
else
    radius=$((height / 2))
fi
centerX=$((width / 2))
centerY=$((height / 2))

borderThickness=5  # You can adjust this value to your desired border thickness

# Add circular border to the image
convert "$f" -alpha set -background none -fill white \
\( +clone -channel A -morphology EdgeOut Diamond +channel +level-colors black \) \
-compose DstOver -composite "${f%.*}_circle.${f##*.}".${f##*.}"
end