FROM adoptopenjdk/openjdk11:latest
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["nohup", "java", "-jar", "-Dspring.profiles.active=prod", "/app.jar"]