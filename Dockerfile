FROM alpine:3.7

ADD init.sh /

RUN apk add --no-cache bash docker

ENTRYPOINT ["/bin/bash", "/init.sh"]


