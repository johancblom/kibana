curl -XDELETE 'http://localhost:9200/eom' -d '
{
	"query": { "filter": {"PROCESS_DATE": {"gte": "2018-09-01"}}}
}
'
