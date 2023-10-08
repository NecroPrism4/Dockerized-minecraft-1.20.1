# Utiliza la imagen oficial de Java 8 como base
FROM openjdk:8-jre

# Establece el directorio de trabajo en /minecraft
WORKDIR /minecraft

# Copia el archivo JAR del servidor de Minecraft a la imagen
COPY . .

# Expone el puerto 25565
EXPOSE 25565
EXPOSE 25575

# Ejecuta el servidor de Minecraft
CMD ["sh run.sh""]

# Acepta el EULA automáticamente
RUN echo "eula=true" > eula.txt
