FROM openjdk:17-jdk-alpine

COPY target/spring-message-app.jar /spring-message-app.jar

ENTRYPOINT ["java","-jar","/spring-message-app.jar"]