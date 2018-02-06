curl -XDELETE 'localhost:9200/potoh'

curl -XPUT 'localhost:9200/potoh?pretty' -d'
{
    "settings" : {
        "number_of_shards" : 1
    },
    "mappings" : {
        "type1" : {
            "properties" : {
		"column35" : { "type" : "integer"},
		"column36" : { "type" : "integer"}
            }
        }
    }
}'
