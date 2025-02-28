# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 as builder

# Copy the project files to the container
COPY . /app

# Set the working directory
WORKDIR /app

# Build the application
RUN mvn clean package

# Stage 2: Create the Docker container with the built JAR
FROM openjdk:17

LABEL authors="menghu"

# Set the working directory in the Docker container
WORKDIR /app

# Copy the JAR file from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]