# Docker Filebeat image

Filebeat is a lightweight, open source shipper for log file data. As the next-generation Logstash Forwarder, Filebeat tails logs and quickly sends this information to Logstash for further parsing and enrichment or to Elasticsearch for centralized storage and analysis.

## Supported tags and respective `Dockerfile` links

-	[`1.1.2`, `1.1`, `1`, `latest` (*Dockerfile*)](https://github.com/primait/docker-filebeat/blob/master/Dockerfile)

## Build and update process

This image is automatically built at every push of this repository and every time that the `debian:jessie` base image gets updated in order to ensure that bugfixes and security updates are immediately applied.

## Run

```
docker run -v /path/to/filebeat.yml:/etc/filebeat/filebeat.yml prima/filebeat:1 -c /etc/filebeat/filebeat.yml
```

Or, you can create your own derived image, with the configuration in the image itself.

```dockerfile
FROM prima/filebeat
COPY my-config/ /etc/filebeat/
```
