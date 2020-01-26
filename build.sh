#!/bin/bash +x
docker build -t gwsu2008/jenkins-nodejs:latest .
if [ $? -ne 0 ]; then
	exit 1
fi
docker push gwsu2008/jenkins-nodejs:latest
if [ $? -ne 0 ]; then
	exit 1
fi
# docker tag gwsu2008/jenkins-nodejs:latest gwsu2008/jenkins-nodejs:12.14.1
# docker push gwsu2008/jenkins-nodejs:12.14.1
