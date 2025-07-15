# Base image
FROM openjdk:17

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/docker-jenkins-demo-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
