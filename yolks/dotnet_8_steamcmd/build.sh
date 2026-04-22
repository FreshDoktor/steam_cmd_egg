#!/bin/bash
# Build and optionally push the dotnet_8_steamcmd image
set -e

IMAGE="${1:-ghcr.io/yourorg/yolks:dotnet_8_steamcmd}"

echo "Building image: ${IMAGE}"
docker build -t "${IMAGE}" .

echo ""
echo "Done. To push:"
echo "  docker push ${IMAGE}"
