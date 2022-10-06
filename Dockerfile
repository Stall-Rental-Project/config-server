FROM openjdk:11

# Set the working directory
WORKDIR /app

COPY /target/config-server.jar config-server.jar

EXPOSE 8888

ENTRYPOINT ["java", "-Dspring.profiles.active=jdbc","-jar", "config-server.jar"]

