# To run as Monolith (no docker container):
# echo "running 'bundle install' to ensure all .gem files are present"
# bundle install

# echo "Starting app!"
# bin/rails server

#To run as Docker Container:

echo "Building docker image"
eval $(minikube docker-env -u) # Reset terminal to use Mac's real docker daemon
docker build -t rails-otel-sandbox .

echo "\n"
echo "Running docker container"
docker run -d --name rails-otel-sandbox -p 3000:3000 rails-otel-sandbox

echo "\n"
echo "Checking container status with 'docker ps'"
docker ps

echo "\n"
echo "Listing logs via 'docker logs rails-otel-sandbox...'"
sleep 3
docker logs rails-otel-sandbox