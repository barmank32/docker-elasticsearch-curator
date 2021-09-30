FROM alpine:3.12

RUN apk -U add python3 py3-pip

ARG CURATOR_VERSION=5.8.3

RUN pip install elasticsearch-curator==${CURATOR_VERSION}

COPY config/* /etc/curator/
COPY run-curator /usr/bin/

ENTRYPOINT ["/usr/bin/run-curator"]
