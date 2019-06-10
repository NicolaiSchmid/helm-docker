FROM alpine:latest

RUN apk update
RUN apk add curl openssl

RUN curl https://raw.githubusercontent.com/kubernetes/helm/dev-v3/scripts/get > get_helm.sh && ash get_helm.sh && rm -rf get_helm.sh

RUN helm init --client-only
