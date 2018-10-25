FROM gradle:jre10 AS build
WORKDIR /app
COPY /app /app

USER root
RUN  chown -R gradle /app 
USER gradle             

RUN ./gradlew build --stacktrace

FROM tomcat:9.0-jre10
COPY --from=0 /app/build/libs/app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/app.war
