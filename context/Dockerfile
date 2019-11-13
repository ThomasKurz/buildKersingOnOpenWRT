FROM ubuntu:18.04
RUN apt-get update

RUN apt-get install -y protobuf-compiler libprotobuf-dev libprotoc-dev
RUN apt-get install -y build-essential automake libtool autoconf
RUN apt-get install -y git-core pkg-config
# RUN apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
RUN apt-get install -y subversion libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc zip
RUN apt-get install -y wget python-minimal

# RUN cd / && git clone https://git.openwrt.org/openwrt/openwrt.git
# RUN cd /openwrt && git checkout openwrt-18.06
# RUN cd /openwrt && ./scripts/feeds update -a && ./scripts/feeds install -a

RUN mkdir -p /lede \
  && cd /lede \
  && wget http://www.dragino.com/downloads/downloads/LoRa_Gateway/LG02-OLG02/lede-sdk.tar.gz \
  && tar -xzvf lede-sdk.tar.gz


# RUN cd / && git clone https://github.com/dragino/openwrt_lede-18.06 dragino-lede-18.06
# RUN apt-get install -y time
# RUN cd /dragino-lede-18.06 && ./set_up_build_environment.sh
# RUN cd /dragino-lede-18.06 && FORCE_UNSAFE_CONFIGURE=1 ./build_image.sh

# RUN mkdir /kersing
# RUN cd /kersing && git clone https://github.com/kersing/packet_forwarder.git
# RUN cd /kersing && git clone https://github.com/kersing/lora_gateway.git
# RUN cd /kersing && git clone https://github.com/kersing/paho.mqtt.embedded-c.git
# RUN cd /kersing && git clone https://github.com/kersing/ttn-gateway-connector.git
# RUN cd /kersing && git clone https://github.com/kersing/protobuf-c.git
# RUN cd /kersing && git clone https://github.com/google/protobuf.git
#
# RUN apt-get install -y gcc-mips-linux-gnu g++-mips-linux-gnu
#
# COPY build_libloragw.sh /kersing/
# COPY library.cfg /kersing/lora_gateway/libloragw/library.cfg
# RUN cd /kersing && bash build_libloragw.sh
#
# COPY build_libprotobuf.sh  /kersing/
# RUN cd /kersing && bash build_libprotobuf.sh
#
# COPY build_pahomqtt.sh  /kersing/
# RUN cd /kersing && bash build_pahomqtt.sh
#
# COPY build_ttngwconn.sh /kersing/
# RUN cd /kersing && bash build_ttngwconn.sh
#
# COPY build_mppktfwd.sh /kersing/
# RUN cd /kersing && bash build_mppktfwd.sh
