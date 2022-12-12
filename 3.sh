#(1.3) Extracción de un fragmento, escogiendo instantes de inicio y final

#!/bin/bash

cut() {
    local file="$1" # Archivo de entrada
    local start="$2" # 00:10 (minutos:segundos)
    local end="$3"  # 00:20 (minutos:segundos)
    local output="$4" # Archivo de salida
	local EXT="$(ls "$1" | rev | cut -d '.' -f 1 | rev)"

    ffmpeg -i "$file" -map 0 -ss "$start" -to "$end" -c copy "$output"."$EXT"
}

cut $1 $2 $3 $4




