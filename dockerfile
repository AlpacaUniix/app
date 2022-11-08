# syntax=docker/dockerfile:1
FROM alpine
RUN \
apk update && \
apk add nginx
COPY ./docker /
ENTRYPOINT ["nginx", "-g", "daemon off;"]