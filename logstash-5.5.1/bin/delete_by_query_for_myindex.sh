curl -XDELETE 'localhost:9200/myindex/_query?pretty' -H 'Content-Type: application/json' -d'
{
	"query": {
		"range": {
			"ts": {
				"gte": "2018-07-12T00:00:00",
				"lte": "2018-07-13T00:00:00"
			}
		}
	}
}' 
