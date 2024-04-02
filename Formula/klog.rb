class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.3/klog-mac-intel.zip'
    sha256 '0000000000000000000000000000000000000000000000000000000000000000'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.3/klog-mac-arm.zip'
    sha256 '0000000000000000000000000000000000000000000000000000000000000000'
  else
    raise 'unexpected CPU'
  end

  disable! date: "2024-03-25", because: "The jotaen/klog tap was discontinued. You may migrate to https://github.com/Ovyerus/homebrew-klog"

  def install
    bin.install 'klog'
  end
end
