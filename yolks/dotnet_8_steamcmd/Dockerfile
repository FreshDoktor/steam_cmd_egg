FROM ghcr.io/parkervcp/yolks:dotnet_8

LABEL maintainer="custom"
LABEL org.opencontainers.image.description="dotnet 8 runtime with SteamCMD for tModLoader Workshop support"

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

ENV STEAMCMD_DIR="/opt/steamcmd"

RUN mkdir -p "${STEAMCMD_DIR}" \
    && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" \
        | tar -xzvf - -C "${STEAMCMD_DIR}" \
    && chown -R container:container "${STEAMCMD_DIR}"

RUN su -c "${STEAMCMD_DIR}/steamcmd.sh +quit" container || true

USER container
ENV HOME=/home/container
