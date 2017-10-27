FROM python:2.7.14-alpine3.6

RUN apk --no-cache add libstdc++ \
    && apk --no-cache add --virtual build-dependencies g++ musl-dev \
    && pip install --no-cache-dir grpcio-tools \
    && apk --no-cache del build-dependencies
