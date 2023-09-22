#build Dockerfile with the command
docker build -t hello-world .
#hello-express is the image name.

#run a tag of the docker image with the command below
#docker tag hello-express your-username/hello-express:latest
#since my username is "vakabinto" , the image was tagged below

docker tag hello-world vakabinto/hello-world:latest

#login to docker
docker login

#enter login details

#push image to docker
docker push vakabinto/hello-world:latest

echo "docker image with the name 'hello-world:latest' has been successfully dockerized"