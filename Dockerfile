FROM maven:3.8-openjdk-18-slim AS MAVEN_BUILD
COPY ./ ./
RUN mvn clean package
RUN ls

FROM openjdk:18-jdk-alpine3.15
COPY --from=MAVEN_BUILD /target/Dummy_Docker-1.0-SNAPSHOT-jar-with-dependencies.jar demo.jar

ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "demo.jar"]