FROM gradle:latest as builder
USER root
WORKDIR /builder
ADD . /builder
RUN gradle build --stacktrace

FROM openjdk:latest
LABEL authors="Chandra Mauli"
WORKDIR /app
EXPOSE 8080
COPY --from=builder /builder/build/libs/the-cr-backend-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "the-cr-backend-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java", "-jar","the-cr-backend-0.0.1-SNAPSHOT.jar"]