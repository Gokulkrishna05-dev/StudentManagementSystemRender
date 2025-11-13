FROM tomcat:11.0.4-jdk21
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]