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
CMD ["java", "-Xmx8G", "-jar", "forge-1.12.2-14.23.5.2859.jar", "nogui"]

# Acepta el EULA automáticamente
RUN echo "eula=true" > eula.txt
