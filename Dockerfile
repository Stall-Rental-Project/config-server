#FROM openjdk:11
#
## Set the working directory
#WORKDIR /app
#
#COPY target/config-server.jar config-server.jar
#
#ENTRYPOINT ["java","-jar", "/config-server.jar"]
#
#EXPOSE 8888
FROM openjdk:11
VOLUME /tmp
COPY target/config-0.0.1-SNAPSHOT.jar config-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","/config-0.0.1-SNAPSHOT.jar"]
EXPOSE 8888