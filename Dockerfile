# Seleccionar la imagen base
FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos de requerimientos
COPY requirements.txt ./

# Instalar las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto en el que se ejecuta la aplicación
EXPOSE 4000

# Comando para iniciar la aplicación
CMD ["python", "app.py"]

