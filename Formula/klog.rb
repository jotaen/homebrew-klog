class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.2/klog-mac-intel.zip'
    sha256 '9808a7ad160788f05b9ba3cabc6ea55919911accab4b554c13df80b94aac2658'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.2/klog-mac-arm.zip'
    sha256 'f3242c4297b24a4ac3bfd2cdf2fbeac075eb7972c92d4bd2555868896eae4b17'
  else
    raise 'unexpected CPU'
  end

  opoo 'The jotaen/klog tap is currently looking for a maintainer.'
  opoo 'It might otherwise be abandoned. If you’re interested to volunteer,'
  opoo 'please see https://github.com/jotaen/homebrew-klog/issues/8'

  def install
    bin.install 'klog'
  end
end
