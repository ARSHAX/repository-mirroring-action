FROM alpine:3.10

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh

RUN apk add --no-cache bash

COPY mirror.sh /mirror.sh
RUN chmod u+x mirror.sh
COPY setup-ssh.sh /setup-ssh.sh
RUN chmod u+x setup-ssh.sh

ENTRYPOINT ["/mirror.sh"]
