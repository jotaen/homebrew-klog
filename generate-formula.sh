#!/bin/bash

set -e

apt-get update
apt-get install -y curl unzip jq

TEMPDIR=$(mktemp -d)
pushd $TEMPDIR

curl \
	--remote-name \
	--location \
	--silent \
	https://github.com/jotaen/klog/releases/latest/download/klog-mac-intel.zip

unzip klog-mac-intel.zip

SHASUM="$(sha256sum klog-mac-intel.zip | head -c 64)"

VERSION="$(curl --silent https://api.github.com/repos/jotaen/klog/releases/latest | jq -r '.name')"

popd

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
