FROM openjdk:11

# Set the working directory
WORKDIR /app

COPY target/config-server.jar config-server.jar

ENTRYPOINT ["java","-jar", "/config-server.jar"]

EXPOSE 8888