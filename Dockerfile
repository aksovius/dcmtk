FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y dcmtk && \
    rm -rf /var/lib/apt/lists/*

COPY dcmqrscp.cfg /etc/dcmtk/
COPY entrypoint.sh /entrypoint.sh

EXPOSE 11112

ENTRYPOINT ["/entrypoint.sh"]
