class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v4.0/klog-mac-intel.zip"
  sha256 "24f3a0570ddc2f93f383fc3e6a585823c6d6749144051e7bcc0f51184374f0c3"
  license "MIT"
  def install
    bin.install "klog"
  end
end
