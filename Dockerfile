FROM quay.io/realeyes/tshark-rpi3

RUN [ "cross-build-start" ]

COPY desegmentandmerge.sh /opt/desegmentandmerge.sh

RUN mkdir -p /opt/tsharklogs

WORKDIR /opt/tsharklogs

VOLUME /opt/tsharklogs

RUN [ "cross-build-end" ]

CMD [ "tshark", "-f", ""tcp port 80"" ]
