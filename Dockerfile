FROM tomcat:8.5-jdk21-openjdk-slim-bookworm
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD ch06_ex2_survey.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]