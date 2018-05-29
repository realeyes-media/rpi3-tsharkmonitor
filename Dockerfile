FROM quay.io/realeyes/tshark-rpi3

# Sets max memory usage at 200MB in KB - override in docker run if desired with -e
ENV max_mem_in_kb="200000"

RUN [ "cross-build-start" ]

RUN [ "cross-build-end" ]

HEALTHCHECK --interval=5s --timeout=5s --retries=3 \
    CMD if [ $(free -m | grep Mem: | awk '{print $3}') -le ${max_mem_in_kb} ]; then exit 0; else exit 1; fi

CMD [ "tshark", "-f", ""tcp port 80"" ]
