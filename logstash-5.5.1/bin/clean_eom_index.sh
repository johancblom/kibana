curl -XDELETE 'http://localhost:9200/eom' -d '
{
	"query": { "filter": {"PROCESS_DATE": {"gte": "2017-09-01"}}}
}
'
