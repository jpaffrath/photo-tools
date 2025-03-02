#!/bin/bash

# Check, if we have arguments
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 file1 [file2 ...]"
    exit 1
fi

for filename in "$@"; do
    if [ ! -f "$filename" ]; then
        echo "File not found: $filename"
        continue
    fi

    exiftool -overwrite_original \
        -ALL= \
        -DateTimeOriginal="2025-02-23 16:00:00" \
        -DateTimeDigitized="2025-02-23 16:00:00" \
        -lensmodel="Series E 50mm 1.8" \
        -lenstype="Series E 50mm 1.8" \
        -lensinfo="50 50 1.8 1.8" \
        -lensmake="Nikon" \
        -make="Nikon" \
        -model="FG" \
        -focallength="50" \
        -description="Roll: Agfa Color 400 Dev: On Film Lab" \
        -iso="400" \
	-GPSLatitude=21.298221069977238 \
	-GPSLongitude=-158.1083713603649 \
	-GPSLatitudeRef=N \
	-GPSLongitudeRef=E \
        "$filename"
done

