FROM arm32v6/alpine:latest
RUN apk add curl bash git
RUN curl -fsSL https://filebrowser.xyz/get.sh | bash
RUN mkdir /config
COPY config.json filebrowser.json
RUN mkdir /db
VOLUME ["/db"]
EXPOSE 80

ENTRYPOINT ["filebrowser"]