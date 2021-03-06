FROM debian:stretch

MAINTAINER Benny Parpart <me@crannk.me>

RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/sysown/proxysql/releases/download/v1.4.5/proxysql_1.4.5-debian9_amd64.deb -O /opt/proxysql_1.4.5-debian9_amd64.deb && \
    dpkg -i /opt/proxysql_1.4.5-debian9_amd64.deb && \
    rm -f /opt/proxysql_1.4.5-debian9_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["proxysql", "-f"]
