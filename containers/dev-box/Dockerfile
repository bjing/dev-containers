# 1. Start from the original image
FROM debian:testing-slim

# 2. Automatically apply your changes/installations
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y curl vim wget htop fastfetch sudo git

RUN useradd -m -s /bin/bash brian && \
    echo "brian:password123" | chpasswd && \
    usermod -aG sudo brian

USER brian
WORKDIR /home/brian
