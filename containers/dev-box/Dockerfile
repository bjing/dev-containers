# 1. Start from the original image
FROM debian:testing-slim

# 2. Automatically apply your changes/installations
RUN apt-get update && apt-get upgrade -y

# General tools
RUN apt-get install -y curl vim wget htop fastfetch sudo git gnupg

# Dependencies for Haskell
RUN apt-get install -y build-essential libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 libncurses-dev libncurses6 libtinfo6

# Dependencies for Ruby
RUN apt-get install -y build-essential autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev rustc

RUN rm -rf /var/lib/apt/lists/*

ARG UNAME=brian

RUN useradd -m -s /bin/bash $UNAME && \
    echo "$UNAME:password" | chpasswd && \
    usermod -aG sudo $UNAME

RUN echo "$UNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$UNAME \
    && chmod 0440 /etc/sudoers.d/$UNAME

RUN mkdir -p /home/$UNAME/scripts
VOLUME /home/$UNAME/scripts

USER $UNAME
WORKDIR /home/$UNAME
