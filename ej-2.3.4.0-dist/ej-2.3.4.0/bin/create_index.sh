
curl -XPUT 'localhost:9200/myindex?pretty' -d'
{
    "settings" : {
        "number_of_shards" : 1
    },
    "mappings" : {
        "type1" : {
            "properties" : {
                "ts" : { "type" : "date" },
				"type" : { "type" : "string", "index": "not_analyzed" },
		"details" : { "type" : "string", "index": "not_analyzed" },
		"details_short" : { "type" : "string", "index": "not_analyzed" },
		"diff" : { "type" : "float" }
            }
        }
    }
}'
