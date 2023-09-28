FROM docker:dind
#USER root
RUN mkdir -p /newfolder
RUN chown newuser /newfolder
USER newuser
WORKDIR /newfolder
RUN chmod 0777 /usr/local/docker/foo

#RUN apk add -U git curl
#CMD [ "docker", "run", "--privileged", "-d", "docker:dind" ]
