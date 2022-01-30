class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v3.3/klog-mac-intel.zip"
  sha256 "02dfbcdf67d6385a13be6e8dbbf439cd62dc6a0973b3257ff6356c2a324e187d"
  license "MIT"
  def install
    bin.install "klog"
  end
end
