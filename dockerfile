# Usar una imagen base oficial de Python
FROM python:3.11-slim

# Setear el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de requerimientos e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código de la aplicación
COPY app/ ./app/

# Comando por defecto al iniciar el contenedor
CMD ["python", "app/main.py"]