# #use lightweight JDK 17 base image
# FROM eclipse-temurin:21-jre

# # Set the working directory
# WORKDIR /app

# # Copy the application JAR file to the container
# COPY target/*.jar app.jar

# # Expose the application port
# EXPOSE 8001

# # Command to run the application
# ENTRYPOINT ["java", "-jar", "app.jar"]

#---------- Build Stage ----------
FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

# ---------- Runtime Stage ----------
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]