#!/bin/sh

re_scale() {
    local INPUT_FILE=$1
    local SCALE=$2 # width:height format, example 800:600
    ffmpeg -i "$INPUT_FILE" -vf scale="$SCALE" -c:a copy "$(tr : x <<<$SCALE)_$INPUT_FILE"
}

re_scale $1 $2
