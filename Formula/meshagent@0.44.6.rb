class MeshagentAT0446 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.6"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.6/meshagent-0.44.6-macos.tar.gz"
    sha256 "cfddf7e5410eacc37e2ab24c54d466d7d5c987ed4144417ed0869aad5ecc326f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.6/meshagent-0.44.6-linux-arm64.tar.gz"
      sha256 "b4ed456e169032078114ebb2a8e676e27f5e7f7d8d0acd38dde43ede2c92baa6"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.6/meshagent-0.44.6-linux-x86_64.tar.gz"
      sha256 "7e503239295dde2b6afea4d4eb865eed6bccc08faefa4a2da43b720fd9d823a4"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
