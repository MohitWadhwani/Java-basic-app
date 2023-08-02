FROM openjdk:8-jdk-alpine
EXPOSE 9090
ARG JAR_FILE=target/java-devops-testing.jar
COPY ${JAR_FILE} java-devops-testing.jar
ENTRYPOINT ["java","-jar","/java-devops-testing.jar"]
MAINTAINER "Mohit Wadhwani"