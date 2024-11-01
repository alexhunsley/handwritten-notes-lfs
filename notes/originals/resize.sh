#!/bin/bash

# Generates medium and small versions of the images.
#
# Usage:
#
# Copy all full-size images to `originals` dir then run this script inside that dir.
#


# target size for smallest side
shortest_side_medium=1200
shortest_side_small=900

# Ignore case, and suppress errors if no files 
shopt -s nullglob
shopt -s nocaseglob

# Process all image files
for f in *.gif *.png *.jpg; do

	mogrify -resize "${resize_shortest_size}x${resize_shortest_size}^>" *.jpg

# Get image's width and height, in one go
# read w h < <(identify -format "%w %h" "$f")

# if [ $w -eq $h ]; then
#      magick "${f}" -resize "${shortest}x${shortest}^" -gravity center -crop "${shortest}x${shortest}+0+0" "new-${f}"
# elif [ $h -gt $w ]; then
#      magick "${f}" -resize "${shortest}x${longest}^" -gravity center -crop "${shortest}x${longest}+0+0" "new-${f}"
# else
#      magick "${f}" -resize "${longest}x${shortest}^" -gravity center -crop "${longest}x${shortest}+0+0" "new-${f}"
# fi

done
