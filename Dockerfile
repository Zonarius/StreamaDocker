FROM openjdk:8-jre-alpine
ADD https://github.com/dularion/streama/releases/download/v1.0.18/streama-1.0.18.war /home
COPY application.yml /home

EXPOSE 8080
ENTRYPOINT cd /home && java -jar streama-1.0.18.war
