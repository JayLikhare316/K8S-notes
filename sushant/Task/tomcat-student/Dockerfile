FROM maven:3.9.5-amazoncorretto-17 AS builder
WORKDIR /app
COPY student-ui .
RUN mvn clean package
FROM tomcat:9.0.80-jre11-temurin-jammy
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/student.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
