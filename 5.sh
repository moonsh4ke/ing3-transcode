#!/bin/bash
# Ej: input.mp4 00:00:10 00:00:50 output
audio () {
       local file=$1
       local ini=$2
       local fin=$3
       local out=$4
       ffmpeg -i "$file" -vn -map 0 -ss "$ini" -to "$fin" -f s16le -acodec pcm_s16le "$out".raw
}
audio $1 $2 $3 $4

