FROM maven:3.8.2-openjdk-8 AS builder
WORKDIR /app
#RUN apt update && \
#       apt install maven -y
COPY . .
RUN mvn clean package
RUN ls target/

FROM tomcat:jre8-temurin-focal AS deploy
COPY --from=builder app/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh","run"]
