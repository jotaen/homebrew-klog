class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.0/klog-mac-intel.zip'
    sha256 '7611d3b1d1105411f6a1dd6c749c5a1e785edd4b41c4123b3444313ead0502ae'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.0/klog-mac-arm.zip'
    sha256 '2515d4bf6ad46b630b8d221a4899655216c4fa4f2104e2cfabe24f170798bfe7'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
