#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
bin=${DIR}/../bin
lib=${DIR}/../lib

echo "Starting the import\n"

java \
    -cp "${lib}/*" \
    -Dlog4j.configurationFile=${bin}/log4j2.xml \
    org.xbib.tools.Runner \
    org.xbib.tools.JDBCImporter \
    /home/vagrant/ej-2.3.4.0-dist/ej-2.3.4.0/bin/statefile.json

echo "Finished the import\n"

#curl -XPUT 'localhost:9200/myindex?pretty' -d'
#{
#    "settings" : {
#        "number_of_shards" : 1
#    },
#    "mappings" : {
#        "type1" : {
#            "properties" : {
#                "ts" : { "type" : "date", "format" : "epoch_millis" },
#				"type" : { "type" : "string", "index": "not_analyzed" },
#			"details" : { "type" : "string", "index": "not_analyzed" },
#			"details_short" : { "type" : "string", "index": "not_analyzed" }
#            }
#        }
#    }
#}'
