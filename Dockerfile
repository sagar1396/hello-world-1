FROM maven:3.6.3-ibmjava-8-alpine AS build

COPY . .

RUN mvn clean package

# Pull base image 
From tomcat:8-jre8 

COPY --from=build ./target/*.war /usr/local/tomcat/webapps

