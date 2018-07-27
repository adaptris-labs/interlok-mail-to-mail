FROM adaptris/interlok:snapshot-alpine

ADD ant /opt/interlok/ant

RUN rm -f /opt/interlok/adp-*.jar && \
    cd ant && \
    ant deploy && \
    rm -rf /root/.ivy2/cache/com.adaptris.ui && \
    rm -rf /opt/interlok/ant

ADD config /opt/interlok/config
