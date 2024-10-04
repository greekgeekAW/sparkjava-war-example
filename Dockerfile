# Use an official Tomcat image
FROM tomcat:10.1.13-jdk17

# Remove default ROOT web app (optional, if you don't want it)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file to the Tomcat webapps directory
# Replace "your-app.war" with the actual WAR file name
COPY target/your-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
