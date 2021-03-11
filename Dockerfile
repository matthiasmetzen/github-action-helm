FROM alpine:3.12.4

RUN apk add --no-cache ca-certificates \
    --repository http://dl-3.alpinelinux.org/alpine/edge/community/ \
    jq curl bash nodejs git
    
COPY src/ /
ENTRYPOINT ["node", "/index.js"]
