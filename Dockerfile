FROM alpine:latest

RUN apk add --no-cache dufs git
ARG REPO_URL=https://github.com/eugeneyng/alpen.git

RUN git clone ${REPO_URL} /tmp/alpen && \
    mkdir -p /data && \
    cp /tmp/alpen/index.html /data/index.html

EXPOSE 5000

CMD ["dufs", "/data", "--allow-all", "--enable-cors", "--render-try-index"]
