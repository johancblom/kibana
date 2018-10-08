curl -XDELETE 'localhost:9200/eom'

curl -XPUT 'localhost:9200/eom?pretty' -d'
{
    "settings" : {
        "number_of_shards" : 1
    },
    "mappings" : {
        "type1" : {
            "properties" : {
		"PROCESS_DATE" : { "type" : "date" ,
                              "format" : "YYYY-MM-dd HH:mm:ss.SSS"},
		"TRANS_QTY" : { "type" : "integer"}
            }
        }
    }
}'
