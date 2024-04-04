#!/bin/bash

# Start the services in the background
docker-compose up -d

# Wait for the server to start
echo "Waiting for server to start..."
while ! curl --output /dev/null --silent --head --fail http://localhost:7333; do
  sleep 5
done
echo "Server started!"

# Send a command to a running container
echo "Running OntoRefine CLI to load config.json..."
docker exec onto_refine /opt/ontorefine/dist/bin/ontorefine-cli transform ../data/entities.json \
  -u http://localhost:7333  \
  --no-clean \
  --configurations ../data/config.json  \
  -f json >> scenepro-entities.ttl
echo "Open Project to edit the RDF Mapping."
echo "Afterwards export project configurations and commit back to config.json."

# Open the default browser
open http://localhost:7333

