FROM node:16-alpine

CMD [ "docker", "run", "--privileged", "-d", "docker:dind" ]
