FROM alpine:latest

RUN echo -e '#!/bin/sh\n\nset -o errexit\n\necho -e "$SERVER_IP $SERVER_NAME" >> /etc/hosts\n$COMMAND' > /usr/local/bin/entrypoint &&\
    chmod +x /usr/local/bin/entrypoint

ENTRYPOINT /usr/local/bin/entrypoint