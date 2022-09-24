FROM openjdk:11-jdk-alpine
ARG JAR_FILE=target/original-gs-maven-0.1.0.jar
ARG JAR_LIB_FILE=target/lib/

# cd /usr/local/runme
WORKDIR /usr/local/runme

# cp target/app.jar /usr/local/runme/app.jar
COPY ${JAR_FILE} app.jar

# cp -rf target/lib/  /usr/local/runme/lib
ADD ${JAR_LIB_FILE} lib/

# java -jar /usr/local/runme/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
