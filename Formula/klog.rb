class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v5.4/klog-mac-intel.zip'
    sha256 '0b5c2b9fa900f8f1b25511ca6c079272720bfd9667787e25ef518615c568bf13'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v5.4/klog-mac-arm.zip'
    sha256 '27fff0633aa7e1740ae031875c8392a25b15a4c2e0fae728ed38772688777b09'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
