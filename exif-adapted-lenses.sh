#!/bin/bash

# Check if we have arguments
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
        -lensmodel="Series E 50mm 1.8" \
        -lensmake="Nikon" \
        -lenstype="Series E 50mm 1.8" \
        -lensinfo="50 50 1.8 1.8" \
        -focallength="50" \
	-GPSLatitude=21.298221069977238 \
	-GPSLongitude=-158.1083713603649 \
	-GPSLatitudeRef=N \
	-GPSLongitudeRef=E \
        "$filename"
done

