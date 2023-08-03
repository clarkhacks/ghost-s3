FROM ghost:latest

WORKDIR /var/lib/ghost

FROM ghost:latest

WORKDIR /var/lib/ghost

ARG storage__active
ARG storage__s3__accessKeyId
ARG storage__s3__secretAccessKey
ARG storage__s3__bucket
ARG storage__s3__region
ARG storage__adapter_s3_asset_host
ARG storage__adapter_s3_endpoint
ENV storage__active=$storage__active
ENV storage__s3__accessKeyId=$storage__s3__accessKeyId
ENV storage__s3__secretAccessKey=$storage__s3__secretAccessKey
ENV storage__s3__bucket=$storage__s3__bucket
ENV storage__s3__region=$storage__s3__region
ENV storage__adapter_s3_asset_host=$storage__adapter_s3_asset_host
ENV storage__adapter_s3_endpoint=$storage__adapter_s3_endpoint

RUN npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content.orig/adapters/storage \
    && cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/s3


RUN npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content.orig/adapters/storage \
    && cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/s3
