# ===============================
# Stage 1: Build the Spring Boot app using Maven + JDK
# ===============================
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Set working directory inside the container
WORKDIR /app

# Copy Maven wrapper and configuration
COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn

# Copy the source code
COPY src src

# Build the app and skip tests for faster builds
RUN mvn -B clean package -DskipTests

# ===============================
# Stage 2: Run the app using lightweight JRE
# ===============================
FROM eclipse-temurin:17-jre

# Set working directory inside runtime container
WORKDIR /app

# Copy the built jar from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose default Spring Boot port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java","-jar","app.jar"]
