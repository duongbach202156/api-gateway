#build a Docker image for a Java application
#base image contains java runtime environment
FROM eclipse-temurin:17-jdk-jammy
# Add application's JAR file to the image
COPY target/api-gateway-0.0.1-SNAPSHOT.jar api-gateway-0.0.1-SNAPSHOT.jar
# Set the command to run the JAR file
ENTRYPOINT ["java", "-jar", "api-gateway-0.0.1-SNAPSHOT.jar"]