FROM openjdk:17-jdk-slim

COPY target/*.jar app.jar

ENV PORT 8083
EXPOSE $PORT

ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","app.jar"]


# FROM openjdk:8
# ADD target/my-maven-docker-project.jar my-maven-docker-project.jar
# ENTRYPOINT ["java", "-jar","my-maven-docker-project.jar"]
# EXPOSE 8080