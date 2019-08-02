#!/bin/bash
set -e


cd /tmp
wget http://download.geofabrik.de/europe/great-britain-latest.osm.pbf
osm2pgsql --port 5432  --create --slim --cache 6000 --number-processes 2 --hstore --multi-geometry -d gis  great-britain-latest.osm.pbf
