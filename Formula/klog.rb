class Klog < Formula
  desc 'Time tracking CLI with plain-text files'
  homepage 'https://github.com/jotaen/klog'
  url 'https://github.com/jotaen/klog/releases/download/v5.4/klog-mac-intel.zip'
  sha256 '0b5c2b9fa900f8f1b25511ca6c079272720bfd9667787e25ef518615c568bf13'
  license 'MIT'
  def install
    bin.install 'klog'
  end
end
