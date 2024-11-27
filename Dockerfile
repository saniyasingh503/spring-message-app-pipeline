FROM amazoncorretto:17-alpine

COPY target/spring-message-app.jar /spring-message-app.jar

ENTRYPOINT ["java","-jar","/spring-message-app.jar"]