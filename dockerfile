FROM openjdk:22-jdk

# Define o diretório de trabalho
WORKDIR /data

# Copia o arquivo do servidor para o contêiner
COPY server.jar /data

# Expõe a porta que o Minecraft usa
EXPOSE 25565

# Comando para iniciar o servidor de Minecraft
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
