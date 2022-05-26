FROM debian:latest
LABEL MAINTAINER=""

WORKDIR /sl-roky-bay-phisher/
ADD . /sl-roky-bay-phisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./sl-roky-bay-phisher.sh"]
