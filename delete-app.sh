# If running as a monolith, simply press Ctl+C to kill the app! If running as Docker container, use this script.

# Stop the docker container:
echo "\n"
echo "Stopping docker container 'rails-otel-sandbox'"
docker stop rails-otel-sandbox

# Delete the now-stopped docker container:
echo "\n"
echo "Removing the stopped docker container via 'docker rm rails-otel-sandbox'"
docker rm rails-otel-sandbox