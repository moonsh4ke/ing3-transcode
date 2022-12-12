#(1.6) Codificación del audio a flac/ogg/mp3.

#!/bin/bash

audio_cod() {
    local file="$1" # Archivo de entrada
    local output="$2" # Archivo de salida
    local EXT="$(ls "$1" | rev | cut -d '.' -f 1 | rev)"

    ffmpeg -i "$file" -acodec flac -vcodec copy "$output"_flac."$EXT"
    ffmpeg -i "$file" -acodec libvorbis -vcodec copy "$output"_ogg."$EXT"
    ffmpeg -i "$file" -acodec mp3 -vcodec copy "$output"_mp3."$EXT"
}

audio_cod $1 $2