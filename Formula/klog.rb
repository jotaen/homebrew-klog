class Klog < Formula
  desc 'Time tracking CLI with plain-text files'
  homepage 'https://github.com/jotaen/klog'
  url 'https://github.com/jotaen/klog/releases/download/v5.2/klog-mac-intel.zip'
  sha256 '1effddb20edf8112244a408d08d01bd2dfdc84ae7cf131f3784f4657cda173dc'
  license 'MIT'
  def install
    bin.install 'klog'
  end
end
