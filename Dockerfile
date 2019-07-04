FROM alpine:latest

RUN apk add --update --no-cache curl openssl

RUN curl -LO https://git.io/get_helm.sh > get_helm.sh && ash get_helm.sh && rm -rf get_helm.sh

RUN helm init --client-only
