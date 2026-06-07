#!/bin/bash
# build.sh — install Hugo versi spesifik lalu build
# Dipanggil oleh Cloudflare Pages (override build command di dashboard)
# https://developers.cloudflare.com/pages/configuration/build-configuration/

set -euo pipefail

HUGO_VERSION="${HUGO_VERSION:-0.162.1}"

echo "==> Installing Hugo ${HUGO_VERSION} (extended)..."

# Detect arch (amd64 / arm64)
ARCH="$(uname -m)"
case "${ARCH}" in
  x86_64) ARCH=amd64 ;;
  aarch64) ARCH=arm64 ;;
  *) echo "Unsupported arch: ${ARCH}"; exit 1 ;;
esac

# Download binary dari GitHub release resmi Hugo
URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz"
echo "    From: ${URL}"

curl -fsSL "${URL}" -o /tmp/hugo.tar.gz
tar -xzf /tmp/hugo.tar.gz -C /tmp
mv /tmp/hugo /usr/local/bin/hugo
chmod +x /usr/local/bin/hugo

# Bersihkan binary lama kalau ada
rm -f /tmp/hugo.tar.gz /tmp/LICENSE /tmp/README.md 2>/dev/null || true

hugo version
echo "==> Building site..."
hugo --gc --minify
