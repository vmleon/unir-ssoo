FROM ubuntu

RUN useradd \
      --create-home \
      --gid root \
      --groups sudo \
      --no-log-init \
      --shell /bin/bash \
      --system \
      victor && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    echo -e "victor" | passswd victor & \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y util-linux file build-essential
