class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v3.2/klog-mac-intel.zip"
  sha256 "fd220cf07b705f9e1a5a638dc706ea9d844d38fc9e386ac7634218c4151ed143"
  license "MIT"
  def install
    bin.install "klog"
  end
end
