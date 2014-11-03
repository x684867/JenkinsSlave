# Docker Container for Ubuntu 14.04 x64
# (c) 2014 EdgeCase, Inc.  sam@edgecase.io
# 
FROM x684867/ubuntucore14.04
MAINTAINER Sam Caldwell <mail@samcaldwell.net>

#Verify inputs

RUN echo "JENKINS_MASTER_HOST: $JENKINS_MASTER_HOST"

ADD files/setupUserConnection /usr/bin/setupUserConnection
RUN /usr/bin/setupUserConnection $JENKINS_MASTER_HOST







EXPOSE 22

#default command when docker image is run
CMD ["/usr/bin/startServer"]