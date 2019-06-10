FROM alpine:latest

RUN apk update
RUN apk add curl openssl

RUN curl https://raw.githubusercontent.com/kubernetes/helm/dev-v3/scripts/get > get_helm.sh && ash get_helm.sh -v v3.0.0-alpha.1 && rm -rf get_helm.sh

RUN helm init
