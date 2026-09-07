class MeshagentAT0521 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.52.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.52.1/meshagent-0.52.1-macos.tar.gz"
    sha256 "841bc1b54f0b1dd1e11fd8af020673790d438ac5228e3ab5ac70d316f25b9b35"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.1/meshagent-0.52.1-linux-arm64.tar.gz"
      sha256 "03d2c15caac433c16d53e3c5c3b46c0dd00289f43e5bcead872f68d535711189"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.1/meshagent-0.52.1-linux-x86_64.tar.gz"
      sha256 "4841185ea543ea05ae5bf2adc641cb7fa499f128b569f1d197678ccc928cbd0e"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
