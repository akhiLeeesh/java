# ---- Stage 1: Build WAR with Maven ----
FROM maven:3.8.4-openjdk-8 AS builder
WORKDIR /app

# Cache dependencies (faster builds)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source and build
COPY src ./src
RUN mvn clean package -DskipTests

# ---- Stage 2: Run with Tomcat ----
FROM tomcat:9.0-jdk8

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy only the built WAR from builder
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
