# Use official Tomcat image
FROM tomcat:9.0-jdk21

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps folder
COPY target/spring-mvc.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat runs on
EXPOSE 8080
