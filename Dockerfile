FROM debian:jessie

MAINTAINER Andrea Usuelli <andrea.usuelli@prima.it>

ENV FILEBEAT_VERSION=1.0.1 \
    FILEBEAT_SHA1=e64858982da59721f4cb42c720faa3fff6ed937d

ADD https://download.elastic.co/beats/filebeat/filebeat-${FILEBEAT_VERSION}-x86_64.tar.gz /opt/filebeat.tar.gz

RUN set -x && \
  cd /opt && \
  echo "${FILEBEAT_SHA1}  filebeat.tar.gz" | sha1sum -c - && \
  tar xzvf filebeat.tar.gz && \
  cd filebeat-* && \
  cp filebeat /bin && \
  cd /opt && \
  rm -rf filebeat*

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "filebeat", "-e" ]
