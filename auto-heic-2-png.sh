#!/bin/bash

# Directory to watch for new HEIC files
WATCH_DIR="$HOME/Documents"

# Function to convert HEIC to PNG
convert_heic_to_png() {
  local heic_file="$1"
  local png_file="${heic_file%.*}.png"
  magick convert "$heic_file" "$png_file"
}

# Main loop to watch for new HEIC files and convert them
fswatch -0 --event Created --event Renamed --event Updated "$WATCH_DIR" | 
while read -d "" event file; do
  if [[ $file =~ \.heic$ ]] || [[ $file =~ \.HEIC$ ]]; then
    echo "Converting $file to PNG format..."
    convert_heic_to_png "$file"
  fi
done

