class Klog < Formula
  desc "Time tracking CLI with plain-text files"
  homepage "https://github.com/jotaen/klog"
  url "https://github.com/jotaen/klog/releases/download/v5.1/klog-mac-intel.zip"
  sha256 "6c43f3a882d20fc44d2dd5773d3cfb500009d102dbfa050580690773dc1a933e"
  license "MIT"
  def install
    bin.install "klog"
  end
end
