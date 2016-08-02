FROM sinohore/basesimage_maven_git_java_dockerfile:latest

# Copy Jenkins-Job_builder Files
RUN mkdir /opt/jjb && cd /opt/jjb
COPY jenkins_job.ini /opt/jjb/jenkins_job.ini
COPY job.yaml /opt/jjb/job.yaml 
