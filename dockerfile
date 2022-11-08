# syntax=docker/dockerfile:1
FROM alpine
RUN \
apk update && \
apk add nginx
COPY ./nginx /
ENTRYPOINT ["nginx", "-g", "daemon off;"]