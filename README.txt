Descripcción y ejecución de scripts:

1.sh - Dado un video de entrada genera un nuevo video con resolución ancho x alto. El archivo de salida tiene el formato anchoxalto_archivo_original

Ejecución
./1.sh archivo_de_entrada ancho:alto

Ejemplo
./1.sh sample.webm 1920:1080

-----------------------------------------------

2.sh - Dado un video de entrada, tasa de aspecto y nombre del archivo de salida se genera una versión modificada del video con la tasa de aspecto ingresada.

Ejecución
./2.sh input tasa_de_aspecto output

Ejemplo
./2.sh sample.webm 5:4 video.webm

-----------------------------------------------
3.sh Dado un vídeo de entrada, inicio en minutos:segundos, termino en minutos:segundos, y el nombre del archivo de salida, extrae un fragmento de el vídeo dado

Ejecución 

./3.sh archivo_de_entrada minutos:segundos minutos:segundos nombre_archivo_de_salida

Ejemplo

Para extraer un fragmento desde el segundo 10 al 20

./3.sh sample.webm 00:10 00:20 output

-----------------------------------------------

4.sh - Dado un video de entrada, ancho y alto de un rectángulo, y coordinadas x e y, genera una versión recortada del video de entrada, de dimensiones
ancho x alto en la coordenada x e y del video de origen. El archivo de salida tiene el formato crop_archivo_original

Ejecución

./4.sh archivo_de_entrada ancho:alto:x:y

Ejemplo

Para obtener un video recortado de tamaño 400x300 en la coordeada (200,200).

./4.sh sample.webm 400:300:200:200

-----------------------------------------------

5.sh - Dado un video de entrada, tiempo de inicio, tiempo final y nombre de salida, se genera un archivo de audio en formato raw con extensión .dat y cuya duración será la ingresada.

Ejecución
./5.sh input tiempo_de_inicio tiempo_final output

Ejemplo
./5.sh sample.webm 00:00:10 00:00:50 audio

-----------------------------------------------
6.sh Dado un archivo de vídeo de entrada y el nombre del archivo de salida, crea copias del archivo codificando el audio a flac/ogg/mp3

Ejecución 

./6.sh archivo_de_entrada nombre_archivo_de_salida

Ejemplo

Para extraer un fragmento desde el segundo 10 al 20

./6.sh sample.webm output

-----------------------------------------------
