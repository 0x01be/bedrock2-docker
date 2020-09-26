FROM 0x01be/coq as build

RUN apk add --no-cache --virtual bedrock2-build-dependencies \
    git \
    build-base

ENV BEDROCK2_REVISION master
RUN git clone --recursive --branch ${BEDROCK2_REVISION} https://github.com/mit-plv/bedrock2.git /bedrock2

WORKDIR /bedrock2

RUN make
RUN make install

