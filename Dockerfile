FROM ubuntu:bionic
ADD  https://dl.min.io/client/mc/release/linux-amd64/mc /usr/local/bin/mc
COPY entrypoint.sh /entrypoint.sh
RUN  chmod +x /usr/local/bin/mc && chmod +x /entrypoint.sh

FROM ubuntu:bionic
COPY --from=0 /usr/local/bin/mc /usr/local/bin/mc
COPY --from=0 /entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
