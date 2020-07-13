# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 

COPY . .
RUN mvn clean package

COPY ./target/*.war /usr/local/tomcat/webapps

