FROM alpine:latest
ADD https://github.com/Hermesss/GL/blob/master/metrics  /temp
WORKDIR /temp
CMD /temp/metrics