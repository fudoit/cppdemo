FROM alpine AS builder
COPY . /builder

FROM frolvlad/alpine-gcc 
LABEL version="1.0"
LABEL maintainer="fufu@caicloud.io"
ENV NAME VAR1
ENV NAME=VAR2
ENV NAME VAR3
RUN mkdir /write_directory
ARG DIRECTORY=/write_directory
ENV VAR_DIR=$DIRECTORY
EXPOSE 80/udp
COPY --from=builder /builder/ .
ADD . /HelloWorld
WORKDIR /HelloWorld
RUN g++ -o Hello Hello.cpp
CMD ["./Hello", " C++",  "sleep", "test"]
