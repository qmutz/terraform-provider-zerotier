FROM debian:12.6

RUN apt-get update -qq && apt-get install iputils-ping netcat curl gnupg procps -y

RUN curl -sSL https://install.zerotier.com | bash

ENTRYPOINT ["/entrypoint.sh"]
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
CMD []
