FROM ubuntu:18.04
RUN apt-get update

RUN apt-get install -y protobuf-compiler libprotobuf-dev libprotoc-dev
RUN apt-get install -y build-essential automake libtool autoconf
RUN apt-get install -y git-core pkg-config
RUN apt-get install -y subversion libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc zip
RUN apt-get install -y wget python-minimal


RUN mkdir -p /lede \
  && cd /lede \
  && wget http://www.dragino.com/downloads/downloads/LoRa_Gateway/LG02-OLG02/lede-sdk.tar.gz \
  && tar -xzvf lede-sdk.tar.gz

ENV MIPSPATH=/lede/lede-sdk/staging_dir/toolchain-mips_24kc_gcc-7.3.0_musl/bin/
ENV PATH=${PATH}:${MIPSPATH}

RUN mkdir /kersing
RUN cd /kersing && git clone https://github.com/kersing/packet_forwarder.git
RUN cd /kersing && git clone https://github.com/kersing/lora_gateway.git
RUN cd /kersing && git clone https://github.com/kersing/paho.mqtt.embedded-c.git
RUN cd /kersing && git clone https://github.com/kersing/ttn-gateway-connector.git
RUN cd /kersing && git clone https://github.com/kersing/protobuf-c.git
RUN cd /kersing && git clone https://github.com/google/protobuf.git

ENV STAGING_DIR=/lede/lede-sdk/staging_dir

COPY jitqueue.c  /kersing/packet_forwarder/mp_pkt_fwd/src/jitqueue.c

RUN echo xx

COPY build_libloragw.sh /kersing/
COPY library.cfg /kersing/lora_gateway/libloragw/library.cfg

RUN cd /kersing && bash build_libloragw.sh

COPY build_libprotobuf.sh  /kersing/
RUN cd /kersing && bash build_libprotobuf.sh

COPY build_pahomqtt.sh  /kersing/
RUN cd /kersing && bash build_pahomqtt.sh

COPY build_ttngwconn.sh /kersing/
RUN cd /kersing && bash build_ttngwconn.sh

COPY build_mppktfwd.sh /kersing/
RUN cd /kersing && bash build_mppktfwd.sh

RUN mkdir -p /bindir && \
  cp /kersing/packet_forwarder/mp_pkt_fwd/mp_pkt_fwd /bindir/mp_pkt_fwd && \
  cp /kersing/paho.mqtt.embedded-c/build/output/libpaho-embed-mqtt3c.so.1 /bindir/ && \
  cp /kersing/ttn-gateway-connector/bin/libttn-gateway-connector.so /bindir/
