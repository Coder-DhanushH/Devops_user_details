#use lightweight JDK 17 base image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the application JAR file to the container
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8001

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]