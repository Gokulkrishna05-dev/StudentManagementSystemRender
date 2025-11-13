# Use Tomcat 11 with JDK 21
FROM tomcat:11.0.13-jdk21

# Copy your WAR file (already renamed to ROOT.war)
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose a placeholder port (Render ignores the number)
EXPOSE 8080

# Runtime command: replace 8080 with $PORT every time container starts
CMD sed -i "s/port=\"8080\"/port=\"${PORT}\"/" /usr/local/tomcat/conf/server.xml && \
    catalina.sh run