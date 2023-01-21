#!/bin/sh

set -e

if command -v jq >/dev/null && command -v curl >/dev/null; then
  echo "jq and curl found - skipping"
else
  sudo apt-get update && sudo apt-get install -y curl jq
fi

echo 'Gathering info...'

VERSION="$(curl --silent https://api.github.com/repos/jotaen/klog/releases/latest | jq -r '.name')"
URL_INTEL="https://github.com/jotaen/klog/releases/download/${VERSION}/klog-mac-intel.zip"
URL_ARM="https://github.com/jotaen/klog/releases/download/${VERSION}/klog-mac-arm.zip"

SHASUM_INTEL="$(curl -sL ${URL_INTEL} | sha256sum | head -c 64)"
SHASUM_ARM="$(curl -sL ${URL_ARM} | sha256sum | head -c 64)"

echo "Checksum Intel: ${SHASUM_INTEL}"
echo "Checksum ARM: ${SHASUM_ARM}"
echo "Version: ${VERSION}"

echo 'Writing formula...'
echo "class Klog < Formula
  desc 'Time tracking CLI with plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url '${URL_INTEL}'
    sha256 '${SHASUM_INTEL}'
  elsif Hardware::CPU.arm?
    url '${URL_ARM}'
    sha256 '${SHASUM_ARM}'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end" > formula/klog.rb
