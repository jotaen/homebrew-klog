class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v3.1/klog-mac.zip"
  sha256 "9739a961b5e42c7fa538108074dc991ff31e5fb5411a4324083e1651b051fd71"
  license "MIT"
  def install
    bin.install "klog"
  end
end
