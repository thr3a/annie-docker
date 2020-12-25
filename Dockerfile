FROM debian

WORKDIR /tmp

RUN apt-get update \
  && apt-get install -y --no-install-recommends ffmpeg curl ca-certificates \
  && curl -L https://github.com/iawia002/annie/releases/download/0.10.3/annie_0.10.3_Linux_64-bit.tar.gz > annie.tar.gz \
  && tar xfv annie.tar.gz \
  && mv annie /usr/local/bin/annie \
  && rm -f annie.tar.gz \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["annie"]