# artsdata-planet-scenepro
Dataflow for ScenePro

To edit RDF mapping:
1. Run `./run_ontorefine.sh` (if needed `chmod +x run_ontorefine.sh`)
2. Open localhost:7333 to use Open Refine workbench
3. Open the existing project
4. Click "Edit RDF Mapping"
5. When done making changes save RDF Mapping
6. Clean up the history (tab undo/redo) to keep only the steps needed.
6. Export > Export project configurations into Github /ontorefine/config.json

# View reports on Artsdata.ca

[Organizations with Wikidata](http://kg.artsdata.ca/query/show?sparql=https%3A%2F%2Fraw.githubusercontent.com%2Fculturecreates%2Fartsdata-planet-scenepro%2Fmain%2Fsparql%2Fscenepro-orgs.sparql&title=Organizations+ScenePro+Report)

[Venues with Wikidata](http://kg.artsdata.ca/query/show?sparql=https%3A%2F%2Fraw.githubusercontent.com%2Fculturecreates%2Fartsdata-planet-scenepro%2Fmain%2Fsparql%2Fscenepro-venues.sparql&title=Venues+ScenePro+Report)