curl -XDELETE 'localhost:9200/dropcopies_fix/_query?pretty' -H 'Content-Type: application/json' -d'
{
	"query": {
		"range": {
			"@timestamp": {
				"gte": "2018-04-24T00:00:00",
				"lte": "2018-04-28T00:00:00"
			}
		}
	}
}' 
