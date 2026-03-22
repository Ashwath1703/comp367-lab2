FROM tomcat:9.0-jdk17
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

Add Dockerfile for Lab 3
