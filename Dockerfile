FROM docker:18.09

LABEL maintainer="docker@marekurban.de"

RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.13.4/bin/linux/amd64/kubectl && \
  chmod +x kubectl && \
  mv kubectl /usr/local/bin/

RUN wget -q https://github.com/rancher/cli/releases/download/v2.2.0-rc11/rancher-linux-amd64-v2.2.0-rc11.tar.xz && \
  tar xf rancher-linux-amd64-v2.2.0-rc11.tar.xz && \
  mv rancher-v2.2.0-rc11/rancher /usr/local/bin/
