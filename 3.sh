#(1.3) Extracción de un fragmento, escogiendo instantes de inicio y final

#!/bin/bash

cut() {
    local file="$1" # Archivo de entrada
    local start="$2" # 00:10 (minutos:segundos)
    local end="$3"  # 00:20 (minutos:segundos)
    local output="$4" # Archivo de salida

    ffmpeg -i "$file" -map 0 -ss "$start" -to "$end" -c copy "$output"
}

cut $1 $2 $3 $4




