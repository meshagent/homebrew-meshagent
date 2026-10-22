class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.55.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.55.1/meshagent-0.55.1-macos.tar.gz"
    sha256 "0e3dc6c9fa6813a5b3a3eeeef4fefb577d9791f7b3f3c4e05b6b670c36c8d4c3"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.55.1/meshagent-0.55.1-linux-arm64.tar.gz"
      sha256 "dfa15f1bc622adfd75c4cd03d57df7d5315603c2658e7b736274817e9fac5a10"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.55.1/meshagent-0.55.1-linux-x86_64.tar.gz"
      sha256 "d2623cd059765722a764cee1e3c221c8abd2cfc42a2433f1f33a04b5b53f1813"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
