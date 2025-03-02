# photo-tools
Collection of scripts supporting my photography hobby.

## Shell scripts

### exif-adapted-lenses.sh
Changes exif data related to the lens when I am adapting retro lenses to digital cameras.
This script preserves all other exif information.

### exif-scanned-film.sh
Changes exif data when processing scanned film with a digital camera.
This script deletes all exif information and re-writes only given exif tags.

## Python scripts

### export-scale-border.py
Scales down given images by 50% and adds a white border for when I am exporting scanned film for my website or social media.

## Installation

For the shell scripts I am using *ExifTool by Phil Harvey*, for my python scripts a virtual environment:
```
python3 -m venv .
source bin/activate
python3 -m pip install -r requirements.txt
```
