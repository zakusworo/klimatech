#!/bin/bash
# build.sh — build Hugo untuk Cloudflare Pages.
# - Di Cloudflare (Linux): download Hugo extended dari GitHub releases ke ~/.local/bin
# - Di lokal (Darwin): pakai Hugo yang sudah terinstall (biasanya dari Homebrew)
# Override build command di Cloudflare dashboard: `bash bin/build.sh`

set -euo pipefail

HUGO_VERSION="${HUGO_VERSION:-0.162.1}"
INSTALL_DIR="${HOME}/.local/bin"
OS="$(uname -s)"

# === Linux (Cloudflare build env): download binary ===
if [ "${OS}" = "Linux" ]; then
  echo "==> Linux detected (Cloudflare) — installing Hugo ${HUGO_VERSION} (extended)..."

  mkdir -p "${INSTALL_DIR}"

  ARCH="$(uname -m)"
  case "${ARCH}" in
    x86_64|amd64) ARCH=amd64 ;;
    aarch64|arm64) ARCH=arm64 ;;
    *) echo "Unsupported arch: ${ARCH}"; exit 1 ;;
  esac

  URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz"
  echo "    From: ${URL}"

  curl -fsSL --retry 3 --retry-delay 2 "${URL}" -o /tmp/hugo.tar.gz
  tar -xzf /tmp/hugo.tar.gz -C /tmp
  mv /tmp/hugo "${INSTALL_DIR}/hugo"
  chmod +x "${INSTALL_DIR}/hugo"
  rm -f /tmp/hugo.tar.gz /tmp/LICENSE /tmp/README.md 2>/dev/null || true

  export PATH="${INSTALL_DIR}:${PATH}"
else
  echo "==> ${OS} detected (local) — pakai Hugo dari system..."
  if ! command -v hugo >/dev/null 2>&1; then
    echo "ERROR: hugo tidak ditemukan. Install dengan: brew install hugo"
    exit 1
  fi
fi

hugo version
echo "==> Building site..."
hugo --gc --minify
