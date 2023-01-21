#!/bin/sh

set -e

sudo apt update && sudo apt install -y curl jq

echo 'Gathering info...'

SHASUM="$(curl -sL https://github.com/jotaen/klog/releases/download/latest/klog-mac-intel.zip | sha256sum | head -c 64)"

VERSION="$(curl --silent https://api.github.com/repos/jotaen/klog/releases/latest | jq -r '.name')"

echo "Checksum: ${SHASUM}"
echo "Version: ${VERSION}"

echo 'Writing formula...'
echo "class Klog < Formula
  desc 'Time tracking CLI with plain-text files'
  homepage 'https://github.com/jotaen/klog'
  url 'https://github.com/jotaen/klog/releases/download/${VERSION}/klog-mac-intel.zip'
  sha256 '${SHASUM}'
  license 'MIT'
  def install
    bin.install 'klog'
  end
end" > formula/klog.rb
