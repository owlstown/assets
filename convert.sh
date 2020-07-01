#!/bin/bash

# Converts images
# Requires ImageMagick
#     brew install imagemagick

# Exit when any command fails
set -e

# JPG quality
# https://sirv.com/help/resources/jpeg-quality-comparison/
QUALITY=80

SRC_DIR=images/themes/originals
DEST_DIR=images/themes/600

# mogrify -quality $QUALITY -path $DEST_DIR -format jpg -interlace plane $SRC_DIR/*.png
mogrify -quality $QUALITY -path $DEST_DIR -format jpg -resize 600x600 -crop 600x450+0+0 $SRC_DIR/*.png
