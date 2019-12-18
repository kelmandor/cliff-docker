FROM tomcat:8.0

MAINTAINER Rahul Bhargava <rahulb@mit.edu>

ADD . /src

RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y git openjdk-7-jdk maven

EXPOSE 8080

# RUN chmod -x /src/launch.sh
# CMD sh /src/launch.sh
RUN chmod -x /src/launch_downloaded.sh
# CMD sh /src/launch_downloaded.sh
