curl -XDELETE 'localhost:9200/dropcopies'

curl -XPUT 'localhost:9200/dropcopies?pretty' -d'
{
    "settings" : {
        "number_of_shards" : 1
    },
    "mappings" : {
        "type1" : {
            "properties" : {
		"Volume" : { "type" : "integer"}
            }
        }
    }
}'
