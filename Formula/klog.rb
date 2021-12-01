class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v3.2/klog-mac-intel.zip"
  sha256 "4a91314cf1fbf0a6b9070263d4b791e9df2c050b25b5755f3821329619ac6a84"
  license "MIT"
  def install
    bin.install "klog"
  end
end
