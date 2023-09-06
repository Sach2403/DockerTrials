FROM openjdk:19-jdk-alpine
COPY target/Dummy_Docker-1.0-SNAPSHOT-jar-with-dependencies.jar Dummy_Docker-1.0-SNAPSHOT-jar-with-dependencies.jar
ENTRYPOINT ["java", "-jar", "Dummy_Docker-1.0-SNAPSHOT-jar-with-dependencies.jar"]