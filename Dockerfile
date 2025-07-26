FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./app /app
RUN ./gradlew build --no-daemon || ./gradlew wrapper && ./gradlew build --no-daemon
CMD ["java", "-cp", "build/classes/java/main", "com.example.App"]
