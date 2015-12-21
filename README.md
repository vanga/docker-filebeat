# Docker Filebeat image

Filebeat is a lightweight, open source shipper for log file data. As the next-generation Logstash Forwarder, Filebeat tails logs and quickly sends this information to Logstash for further parsing and enrichment or to Elasticsearch for centralized storage and analysis.

## Supported tags and respective `Dockerfile` links

-	[`1.0.1`, `1.0`, `1`, `latest` (*Dockerfile*)](https://github.com/primait/docker-filebeat/blob/master/Dockerfile)

## Run

`docker run -v /path/to/filebeat.conf:/etc/filebeat/filebeat.conf prima/filebeat:1`
