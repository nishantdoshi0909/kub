FROM java:8
ARG JAR_FILE=/var/lib/jenkins/.m2/repository/net/codeJava/HelloREST/0.0.1-SNAPSHOT/HelloREST-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add
EXPOSE 8085
ENTRYPOINT ["java","-jar","/app.jar"]
