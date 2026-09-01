class MeshagentAT0520 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.52.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.52.0/meshagent-0.52.0-macos.tar.gz"
    sha256 "4070994b192bc09e47e01f12f4d884d1a4e14c172ebea088dc1381f1fdffe96e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.0/meshagent-0.52.0-linux-arm64.tar.gz"
      sha256 "a702f83dc73e580b5a3069b58a38a87b3532ae2fdeb10768e23fe782d01f7e7c"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.0/meshagent-0.52.0-linux-x86_64.tar.gz"
      sha256 "fc4840c16aa00e5ce1e9ab575b186fd2a3deb3797f2bbdbe95831e117a05d9fc"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
