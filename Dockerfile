FROM tomcat:11.0-jdk21

# Copy your WAR file into Tomcat webapps folder
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Remove the default connector line and inject dynamic port on startup
CMD sed -i "s/port=\"8080\"/port=\"${PORT:-8080}\"/" /usr/local/tomcat/conf/server.xml && \
    catalina.sh run