curl -XDELETE 'localhost:9200/potoh/_query?pretty' -H 'Content-Type: application/json' -d'
{
	"query": {
		"range": {
			"@timestamp": {
				"gte": "2018-01-31T00:00:00",
				"lte": "2018-02-01T00:00:00"
			}
		}
	}
}' 
