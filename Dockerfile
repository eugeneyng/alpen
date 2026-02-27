FROM sigoden/dufs:latest

ARG REPO_URL=https://github.com/eugeneyng/alpen.git

RUN apk add --no-cache git && \
    git clone ${REPO_URL} /tmp/repo && \
    cp /tmp/repo/index.html /data/index.html && \
    rm -rf /tmp/repo

EXPOSE 5000

CMD ["dufs", "/data", "--allow-all", "--render-index"]
