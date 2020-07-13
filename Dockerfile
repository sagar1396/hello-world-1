FROM maven

COPY . .

RUN mvn clean package

# Pull base image 
FROM tomcat:8-jre8 

COPY --from=0 ./target/*.war /usr/local/tomcat/webapps

