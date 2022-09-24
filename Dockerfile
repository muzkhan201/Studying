FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps


# artifacts within docker tomcat  are stored in /usr/local/tomcat/webapps
# note on our dedicated EC2 tomcat server it was /opt/tomcat because that is where we installed 
# the .tar file

# copying artifact from current directory to directory inside container filesystem
COPY ./webapp.war /usr/local/tomcat/webapps

