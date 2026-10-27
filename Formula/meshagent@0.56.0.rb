class MeshagentAT0560 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.56.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.56.0/meshagent-0.56.0-macos.tar.gz"
    sha256 "83d196c64105869c1aae7a1bbfdc24395a0b5d57cceadaca4294f21bb82f4751"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.0/meshagent-0.56.0-linux-arm64.tar.gz"
      sha256 "23c546d9d7f1b062fecad2059d6493959e423506c825e22dd9dd1292be460a3a"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.0/meshagent-0.56.0-linux-x86_64.tar.gz"
      sha256 "282cf7dc7406a2ee5c31b6dc7d7018fc807d0314ecec804452618711a6e6668f"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
