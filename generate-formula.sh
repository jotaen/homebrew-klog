#!/bin/bash

set -e
set -o pipefail

if [[ "$1" == "--install" ]]; then
  echo 'Installing script dependencies...'
  sudo apt-get update
  ! command -v curl >/dev/null && sudo apt-get install -y curl
  ! command -v jq >/dev/null && sudo apt-get install -y jq
fi

CURL_FLAGS="--fail --silent --location --show-error"

echo 'Gathering info...'

VERSION="$(curl ${CURL_FLAGS} https://api.github.com/repos/jotaen/klog/releases/latest | jq -e -r '.name')"
echo "retrieved version: ${VERSION}"

URL_INTEL="https://github.com/jotaen/klog/releases/download/${VERSION}/klog-mac-intel.zip"
URL_ARM="https://github.com/jotaen/klog/releases/download/${VERSION}/klog-mac-arm.zip"

SHASUM_INTEL="$(curl ${CURL_FLAGS} "${URL_INTEL}" | sha256sum | head -c 64)"
echo "retrieved checksum Intel: ${SHASUM_INTEL}"

SHASUM_ARM="$(curl ${CURL_FLAGS} "${URL_ARM}" | sha256sum | head -c 64)"
echo "retrieved checksum ARM: ${SHASUM_ARM}"

echo 'Writing formula...'
echo "class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
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
