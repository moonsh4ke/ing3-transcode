#(1.6) Codificación del audio a flac/ogg/mp3.

#!/bin/bash

usage() {
    echo "Usage: $0 <input file> <output filename>"
    exit 1
}

audio_cod() {
    local file="$1" # Archivo de entrada
    local output="$2" # Archivo de salida

    ffmpeg -i "$file" -vn -acodec flac "$output".flac
    ffmpeg -i "$file" -vn -acodec libvorbis "$output".ogg
    ffmpeg -i "$file" -vn -acodec mp3 "$output".mp3

}

usage
audio_cod $1 $2