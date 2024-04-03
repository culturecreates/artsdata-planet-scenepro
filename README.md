# artsdata-planet-scenepro
Dataflow for ScenePro

To edit mapping:

1. Run docker-compose up
2. Open localhost:7333 to run Open Refine workbench
3. Open the existing project
4. Click "Edit RDF Mapping"
5. When done making changes save RDF Mapping
6. Clean up the history (tab undo/redo) to keep only the steps needed.
6. Export > Export project configurations into Github /ontorefine/config.json


Note: This brought the lines from 16.5k down to 1.1K

Steps:
* docker run -p 7333:7333 ontotext/refine:1.2.0
* docker exec -u root -it 91a8db6f94dc  /bin/sh -c "apk update && apk add curl util-linux coreutils"
* curl entities.json and config.json
* /opt/ontorefine/dist/bin/ontorefine-cli transform entities.json -u http://localhost:7333 --configurations config.json   
--no-clean  -f json >> scenepro-entities.ttl 
