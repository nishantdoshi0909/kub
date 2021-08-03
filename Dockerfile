FROM java:8
ARG JAR_FILE=var/lib/jenkins/workspace/restAPI/target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","/app.jar"]