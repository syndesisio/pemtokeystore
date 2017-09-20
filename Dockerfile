FROM alpine:edge

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

COPY --from=0 /go/bin/pemtokeystore /pemtokeystore

ENTRYPOINT ["/pemtokeystore"]
CMD ["-help"]
