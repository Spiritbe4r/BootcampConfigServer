FROM openjdk:11-jdk
VOLUME /tmp
EXPOSE 8887

ARG JAR_FILE=target/config_server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

