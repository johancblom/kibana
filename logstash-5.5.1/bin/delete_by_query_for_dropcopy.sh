curl -XDELETE 'localhost:9200/dropcopies/_query?pretty' -H 'Content-Type: application/json' -d'
{
	"query": {
		"range": {
			"@timestamp": {
				"gte": "2018-01-01T00:00:00",
				"lte": "2018-03-05T00:00:00"
			}
		}
	}
}' 
