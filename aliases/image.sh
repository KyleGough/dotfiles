#!/usr/bin/zsh 

alias slideshow='feh --scale-down -xzrZD' # Usage: "slideshow 1 ."
alias montage-row-auto='montage-row "*.png" "cover.png"'
alias montage-quad-auto='montage-quad "*.png" "cover.png"'

# Get resolution of image file.
resolution() {
  if [[ $1 == *.png || $1 == *.jpg ]]; then
    identify $1 | grep -o "[[:digit:]]*x[[:digit:]]*" | head -1
  else
    echo "Invalid file format. Only .png and .jpg formats allowed."
  fi
}

# Crops multiple images.
batch-crop-mid() {
  for f in *.png; do
    crop-mid "$f"
  done
}

# Crops an image into the middle horizontal third.
crop-mid() {
  res=$(resolution $1 | tr "x" "\n")
  width=$(echo "$res" | head -1)
  height=$(echo "$res" | tail -1)
  newWidth=$(expr $width / 3)
  convert $1 -crop "${newWidth}x${height}+${newWidth}+0" "cropped-$1"
  echo "Cropped '$1' from ${width}x${height} to ${newWidth}x${height}."
}

# Montage collection of images into a single row.
montage-row() {
  montage -tile x1 -frame 0 -border 0 -geometry "-0+0" "$1" "$2"
}

# Montage collection of images into a 2x2 grid.
montage-quad() {
  montage -tile 2x2 -frame 0 -border 0 -geometry "-0+0" "$1" "$2"
}