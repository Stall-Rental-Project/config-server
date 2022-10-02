./mvnw clean package
./mvnw build
./mvnw package
java -Dserver.port=$PORT -jar target/config-server.jar