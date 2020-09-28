FROM 0x01be/bedrock2:build as build

FROM alpine

RUN apk add --no-cache --virtual bedrock2-runtime-dependencies \
    libstdc++

COPY --from=build /opt/ /opt/

ENV PATH $PATH:/opt/coq/bin:/opt/ocaml/bin/:/opt/opam/bin

