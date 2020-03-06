FROM frolvlad/alpine-bash
ADD https://github.com/Hermesss/GL/blob/master/metrics  /temp/metrics
WORKDIR /temp/
RUN chmod +x metrics
CMD /temp/metrics