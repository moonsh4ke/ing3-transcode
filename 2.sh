#!/bin/bash
# Ej: input.mp4 5:4 output.mp4  
ratio(){
      local file=$1
      local rat=$2
      local out=$3   
      ffmpeg -i "$file"  -aspect "$rat" -map 0 -c copy "$out"
}
ratio $1 $2 $3
