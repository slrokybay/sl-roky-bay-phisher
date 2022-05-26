FROM debian:latest
LABEL MAINTAINER=""

WORKDIR /slrokybayphisher/
ADD . /slrokybayphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./slrokybayphisher.sh"]