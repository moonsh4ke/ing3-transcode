#(1.3) Extracción de un fragmento, escogiendo instantes de inicio y final

#!/bin/bash

usage() {
    echo "Usage: $0 <input file> <output file> <start time> <end time>"
    echo "Example: $0 input.avi output.avi 00:00:10 00:00:20"
    exit 1
}

cut() {
    local file="$1" # Archivo de entrada
    local start="$2" # 00:10 (minutos:segundos)
    local end="$3"  # 00:20 (minutos:segundos)
    local output="$4" # Archivo de salida

    ffmpeg -i "$file" -map 0 -ss "$start" -to "$end" -c copy "$output"
}

usage
cut $1 $2 $3 $4




