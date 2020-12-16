# jenkins-toolbox
Jenkins docker image with essential DevOps tools
### Tools included
- terraform
- packer
- awscli
- docker-cli
- docker-compose
- python3

### How to run the image
```
docker run -v /var/run/docker.sock:/var/run/docker.sock \
-v jenkins_home:/var/jenkins_home \
-p8080:8080 \
-p50000:50000 \
ocelot88/jenkins-toolbox 
```
