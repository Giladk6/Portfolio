# Multi Stage Docker file, for reducing the artifact image size
# 1.Build Image
FROM maven:3.9.9-eclipse-temurin-21-jammy AS BUILD_IMAGE
RUN git clone https://github.com/hkhcoder/vprofile-project.git
RUN cd vprofile-project && git checkout containers && mvn install

# 2.Service Image - not including the maven + all dependencies
FROM tomcat:10-jdk21
LABEL "Project"="Vprofile"
LABEL "Author"="Gilad"
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD_IMAGE vprofile-project/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
