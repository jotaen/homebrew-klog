class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v5.0/klog-mac-intel.zip"
  sha256 "2ca9b3f164a2056a1997d3355dd7b2833284f0ecc685d450dac42611f7bb6470"
  license "MIT"
  def install
    bin.install "klog"
  end
end
