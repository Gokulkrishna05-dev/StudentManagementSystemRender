# Use Tomcat 11 with JDK 21
FROM tomcat:11.0.4-jdk21

# Copy WAR file as ROOT.war
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Set environment variable for Render’s dynamic port
ENV PORT=8080

# Expose that port (Render overrides it with real one)
EXPOSE ${PORT}

# Update server.xml to use $PORT dynamically if possible
RUN sed -i 's/port="8080"/port="'"${PORT}"'"/' /usr/local/tomcat/conf/server.xml

# Start Tomcat
CMD ["catalina.sh", "run"]