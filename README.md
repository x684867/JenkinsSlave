JenkinsSlave
============

This project will generate a Jenkins Slave server to work with x684867/jenkinsmaster as a scalable build automation system.


Usage
-----

(1) Run the container...

    docker run -e JENKINS_MASTER_HOST=192.168.59.104 \
               -i -p 22:22 \
               -t x684867/jenkinsslave:latest

    This command will start the jenkins slave and identify its jenkins master server for connectivity to be established.

(2) Done.  Navigate to https://JENKINS_MASTER_HOST and the slave should
    be added.
