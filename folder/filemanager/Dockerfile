FROM arm64v8/alpine:latest
RUN apk add curl bash git ca-certificates
RUN curl -fsSL https://filebrowser.xyz/get.sh | bash
COPY config.json /.filebrowser.json
RUN mkdir /db
VOLUME ["/db"]
EXPOSE 80

ENTRYPOINT ["filebrowser"]