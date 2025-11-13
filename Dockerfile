# Use Tomcat 11 with JDK 21
FROM tomcat:11.0.4-jdk21

# Copy your WAR file (rename to ROOT.war for simplicity)
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]