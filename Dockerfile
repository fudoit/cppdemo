FROM cargo.dev.caicloud.xyz/qatest/arm64v8/alpine:gpp
MAINTAINER fufutest.caicouddiosdas
LABEL version="1.1"
LABEL maintainer="fufu123@caicloud.io"
ENV NAME VAR1
ENV NAME=VAR2
ENV NAME VAR3
EXPOSE 80/udp
ADD . /HelloWorld
WORKDIR /HelloWorld
RUN g++ -o Hello Hello.cpp
CMD ./Hello test
