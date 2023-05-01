class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.1/klog-mac-intel.zip'
    sha256 '493638095341b649bd4bb464b3beee0c18cd3795a536a2d8e49e5cca4c11bb9e'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.1/klog-mac-arm.zip'
    sha256 'd5ccba3b2843994d20548c8d03481d38eef19a190f5279df718c71b28d67cdba'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
