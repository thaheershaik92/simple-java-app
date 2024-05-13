# Use an OpenJDK base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY /app/example.java

#Expose the port
EXPOSE 8000

# Compile the Java application
RUN javac example.java

# Define the command to run the Java application
CMD ["java", "example.java"]
