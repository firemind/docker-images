# docker-images
docker images for firemind duel runner

build with

> sudo docker build -t firemind/firemind-client:v1 .

run interactive with

> sudo docker run -t -e ACCESSTOKEN=*YOURTOKEN* -i firemind/firemind-client:v1


run detached with

> sudo docker run -d -e ACCESSTOKEN=*YOURTOKEN* firemind/firemind-client:v1
