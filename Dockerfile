FROM alpine:latest

RUN apk update
RUN apk add curl openssl

RUN curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
RUN ash get_helm.sh
RUN rm -rf get_helm.sh
RUN helm init --client-only
