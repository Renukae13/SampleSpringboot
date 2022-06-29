FROM openjdk:8-jdk-alpine
EXPOSE 8080:8080
ENV MIN_HEAP_SIZE='-Xmx768m'
ENV MAX_HEAP_SIZE='-Xmx1536m'
LABEL org sample.springboot.app
VOLUME /tmp
COPY SampleSpringboot/target/spring-boot-complete-0.0.1-SNAPSHOT.jar spring-boot.jar
WORKDIR ./
RUN mkdir -p /logs
ENTRYPOINT ["java","-jar","-Dserver.port=8080","./spring-boot.jar"]
