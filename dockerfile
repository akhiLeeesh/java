# 1. Use official Tomcat with JDK
FROM tomcat:9.0

# 2. Clean default Tomcat webapps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy your app files (JSPs, WEB-INF, static files) into Tomcat's ROOT app
COPY ./src /usr/local/tomcat/webapps/ROOT/

# 4. Expose the port (default 8080 for Tomcat)
EXPOSE 8080

# 5. Start Tomcat server
CMD ["catalina.sh", "run"]
