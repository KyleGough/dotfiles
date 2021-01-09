#!/usr/bin/zsh

# Sets the thumbnail of a video.
set-thumbnail() {
  # Checks correct number of parameters and given parameters are valid files.
  if [ $# -ne 2 ]; then
    echo "ERROR: Incorrect number of parameters."
    return 1
  fi
  if [ ! -f $1 ]; then
    echo "ERROR: Positional parameter 1 is not a valid file." 
    return 1
  fi
  if [ ! -f $2 ]; then
    echo "ERROR: Positional parameter 2 is not a valid file."
    return 1
  fi

  ffmpeg -i "$1" -i "$2" -map 1 -map 0 -acodec copy -vcodec copy "tmp-thumbnail-video.mp4"
  if [ $? -eq 0 ]; then
    mv -i "$1" "old-$1"
    mv -i "tmp-thumbnail-video.mp4" "$1"
    return 0
  else
    echo "ERROR: Failed to set thumbnail."
  fi
}

# Cut videos with ffmpeg.
ffmpeg-cut() {
  ffmpeg -i "$1" -ss "$2" -to "$3" -c copy -avoid_negative_ts make_zero "$4"
}

# Finds the total duration of all videos in the given directory up to a given depth.
total-duration() {
  if [[ $# -eq 1 ]]; then
    depth=1
  elif [[ $# -eq 2 ]]; then
    depth=$2
  fi

  total=$(find $1 -maxdepth $depth -iname "*.mp4" -exec ffprobe -v quiet -of csv=p=0 -show_entries format=duration {} \; | paste -sd+ -| bc)
  h=$(bc <<< "${total}/3600")
  m=$(bc <<< "(${total}%3600)/60")
  s=$(bc <<< "${total}%60")
  printf "%02d:%02d:%02d\n" $h $m $s
}
