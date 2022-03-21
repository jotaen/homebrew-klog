class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v4.0/klog-mac-intel.zip"
  sha256 "2b5694f0e0aecc66eec0ecf2bd360a261faaeaab0bfeb8bb8d1838224834d71d"
  license "MIT"
  def install
    bin.install "klog"
  end
end
