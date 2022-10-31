class Klog < Formula
  desc 'Time tracking CLI with plain-text files'
  homepage 'https://github.com/jotaen/klog'
  url 'https://github.com/jotaen/klog/releases/download/v5.3/klog-mac-intel.zip'
  sha256 '3b696276af82ae2b4ed352ca4dddce1e84ae7dceba72bb21e29a8d0553821772'
  license 'MIT'
  def install
    bin.install 'klog'
  end
end
