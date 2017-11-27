FROM pataquets/collectd

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      libpython2.7 \
      python \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* \
  && \
  mkdir -vp \
    /opt/collectd/plugins/python \
    /opt/collectd/lib/collectd/plugins/python/
