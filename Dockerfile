FROM alpine:latest
ENV VERSION=v3.2.1

RUN apk add --update --no-cache curl openssl

RUN curl -LO https://get.helm.sh/helm-${VERSION}-linux-amd64.tar.gz
RUN tar -xzf helm-${VERSION}-linux-amd64.tar.gz

FROM alpine:latest

COPY --from=0 /linux-amd64/helm /usr/bin

