# Use an OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY example.java /app/

# Compile the Java application
RUN javac example.java

# Define the command to run the Java application
CMD ["java", "example"]
