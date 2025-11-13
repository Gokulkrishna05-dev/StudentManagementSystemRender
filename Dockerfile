FROM tomcat:9-jdk17
COPY MainProject.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]