Descripcción y ejecución de scripts:

1.sh - Dado un video de entrada genera un nuevo video con resolución ancho x alto. El archivo de salida tiene el formato anchoxalto_archivo_original

Ejecución
./1.sh archivo_de_entrada ancho:alto

Ejemplo
./1.sh sample.webm 1920:1080

-----------------------------------------------

4.sh - Dado un video de entrada, ancho y alto de un rectángulo, y coordinadas x e y, genera una versión recortada del video de entrada, de dimensiones
ancho x alto en la coordenada x e y del video de origen. El archivo de salida tiene el formato crop_archivo_original

Ejecución

./4.sh archivo_de_entrada ancho:alto:x:y

Ejemplo

Para obtener un video recortado de tamaño 400x300 en la coordeada (200,200).
./4.sh sample.webm 400:300:200:200
