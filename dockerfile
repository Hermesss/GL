FROM frolvlad/alpine-bash
ADD https://raw.githubusercontent.com/Hermesss/GL/master/metrics  /temp/metrics
WORKDIR /temp/
RUN chmod +x metrics
CMD /temp/metrics $system