FROM eclipse-temurin:21-jre-alpine AS runtime

WORKDIR /app

COPY app/build/libs/app.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
