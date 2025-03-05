# Step 1: Build the project using Maven
FROM maven:3.8.6-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
RUN mvn dependency:resolve
# Step 2: Use lightweight JDK runtime
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/RSCM-Thymleaf-0.0.1-SNAPSHOT.jar app.jar 

# Set environment variables
ENV PORT=8081
EXPOSE 8081

# Health Check (optional but recommended)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s \
  CMD curl -f http://localhost:${PORT}/ || exit 1

# Run the application
CMD ["sh", "-c", "java -Dserver.port=$PORT -jar app.jar"]
