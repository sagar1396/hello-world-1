FROM maven AS build

COPY . .

RUN mvn clean package

# Pull base image 
FROM tomcat:8-jre8 

COPY --from=build ./target/*.war /usr/local/tomcat/webapps

