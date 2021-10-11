FROM openjdk:16-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

ARG JAR_FILE=artifacts/NetworkFilterTeamspeak-*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]