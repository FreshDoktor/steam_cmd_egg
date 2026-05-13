FROM ghcr.io/parkervcp/yolks:dotnet_8

LABEL maintainer="custom"
LABEL org.opencontainers.image.description="dotnet 8 runtime with 32-bit support for SteamCMD (SteamCMD itself is installed per-server by the egg)"

USER root

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        lib32gcc-s1 \
        lib32stdc++6 \
        ca-certificates \
        curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER container
ENV HOME=/home/container
