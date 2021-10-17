class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v3.0/klog-mac.zip"
  sha256 "8ed29318faf011dfe688d12deb6a6c828b93460553f6608dabc97a99335ca64d"
  license "MIT"
  def install
    bin.install "klog"
  end
end
