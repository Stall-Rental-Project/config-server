FROM openjdk:11

# Set the working directory
WORKDIR /app

COPY . .

EXPOSE 8888

ENTRYPOINT ["java","-jar", "config-server.jar"]

