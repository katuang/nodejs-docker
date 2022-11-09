# NodeJS service

This service use jenkins pipeline for build and deployment. There are three steps for the pipeline. The process is defined in Jenkinsfile

##### URL
http://nodejs.34.127.116.183.sslip.io:30008/

###### Build 
Dockerfile is used to build the service that generate container image.

###### Publish
Publish the container image to dockerhub

###### Deploy
apps.yaml is kubernetes manifest file for deployment.
