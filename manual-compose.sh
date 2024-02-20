#!/bin/bash

BLOG_1="min-blog-a.internal"
BLOG_2="min-blog-b.internal"

# rm & rmi
figlet remove all
sudo docker stop $(sudo docker ps -q)
sudo docker rm -f $(sudo docker ps -a -q)
sudo docker rmi -f $(sudo docker images -q)
sudo docker network rm blog-net

figlet build
# blog-a build
sudo docker build -t blog-a -f docker/blog-a/Dockerfile docker/blog-a
# blog-b build
sudo docker build -t blog-b -f docker/blog-b/Dockerfile docker/blog-b
#blog-a run
sudo docker run -d --name $BLOG_1 -p 8001:80 blog-a
# blog-b run
sudo docker run -d --name $BLOG_2 -p 8002:80 blog-b

figlet network connet
# docker network
sudo docker network connect abc $BLOG_1 
sudo docker network connect abc $BLOG_2

# lb build
sudo docker build -t lb -f docker/lb/Dockerfile docker/lb

figlet run
# lb
sudo docker run -d --name lb-1 -p 8003:80 lb
# lb network connect
sudo docker network connect abc lb-1


figlet ps
sudo docker ps

figlet end
sl -Fl
