FROM java:8
WORKDIR /app
COPY HelloREST-0.0.1-SNAPSHOT.jar /app/spring-boot-app.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","spring-boot-app.jar"]
