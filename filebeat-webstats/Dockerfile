FROM scratch

ARG VERSION=5.4.1

COPY ./filebeat-${VERSION}-linux-x86_64 /filebeat
COPY ./filebeat.yml /filebeat/filebeat.yml
COPY ./filebeat.template.json /filebeat/filebeat.template.json

CMD ["/filebeat/filebeat","-c","/filebeat/filebeat.yml","-e"]
