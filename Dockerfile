FROM openjdk:17-jdk-slim as build

COPY target/spring-message-app.jar spring-message-app.jar

ENTRYPOINT ["java","-jar","/spring-message-app.jar"]