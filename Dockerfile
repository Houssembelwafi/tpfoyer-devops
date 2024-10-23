FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the latest release of the JAR file into the container
# Make sure your JAR file is named tp-foyer-*.jar or adjust accordingly
COPY tp-foyer-*.jar /app/tp-foyer.jar

# Expose the port that your Spring Boot app will run on
EXPOSE 8089

# Define the command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/tp-foyer.jar"]
