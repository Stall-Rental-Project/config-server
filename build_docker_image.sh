mvn clean install -U

echo "Removing old docker images"
docker rmi $(docker "211020/cloud-config:latest" -q)

echo "Build a new docker image"
docker build -t 211020/cloud-config:latest --platform=linux/amd64 .

echo "Push the docker image to Repos"
docker push 211020/cloud-config:latest
#!/bin/bash
