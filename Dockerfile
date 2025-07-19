FROM debian:stable-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y rsync && \
    apt-get clean all

# Stay running so we're ready to run backups when required

CMD ["tail", "-f", "/dev/null"]
