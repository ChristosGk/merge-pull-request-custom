FROM alpine

RUN apk add --no-cache bash
RUN apk update && apk upgrade --available
RUN apk --no-cache add git
RUN apk --no-cache add jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 0755 /usr/local/bin/entrypoint.sh
COPY sample_pull_request_event.json /sample_pull_request_event.json

ENTRYPOINT ["entrypoint.sh"]
