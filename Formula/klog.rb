class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v1.0/klog-mac.zip"
  sha256 "17795816e7cf715b4885ecac4c4cc35b4a5fefbfbad9f43c2ad0eb52ee078e57"
  license "MIT"
  def install
    bin.install "klog"
  end
end
