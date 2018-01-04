FROM openjdk:8-jre-alpine
LABEL "com.opitzconsulting"="DevOps Cloud Ci - Oracle"
EXPOSE 8080
VOLUME /tmp
ADD target/cloud-ci-vergleich*.jar app.jar
RUN touch /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]