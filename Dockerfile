FROM tomcat:11.0.4-jdk21

# Copy WAR file as ROOT
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Render gives the container port via $PORT, so update Tomcat config dynamically
RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml

EXPOSE 8080

CMD ["catalina.sh", "run"]