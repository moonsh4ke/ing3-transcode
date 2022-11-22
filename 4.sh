#/bin/sh

# ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x:y" out.mp4
# https://video.stackexchange.com/questions/4563/how-can-i-crop-a-video-with-ffmpeg
crop() {
    local INPUT_FILE=$1
    local CROP_STRING=$2
    ffmpeg -i "$1" -filter:v crop="$2" "crop_$1"
}

crop $1 $2
