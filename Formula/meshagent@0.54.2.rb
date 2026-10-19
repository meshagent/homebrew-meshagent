class MeshagentAT0542 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.54.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.54.2/meshagent-0.54.2-macos.tar.gz"
    sha256 "34dfd1010539f3cdfe56d0e33235f1cbd79ad4c0eddb816c5f7a07dc726e0c3a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.54.2/meshagent-0.54.2-linux-arm64.tar.gz"
      sha256 "7b1a43fac57bf79ed00dfeb16e530de9a03cb336ee83857593a520fccd1ea6e4"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.54.2/meshagent-0.54.2-linux-x86_64.tar.gz"
      sha256 "6d92a7b70ed42e97e08b107b3a040846ea28365459f16ef7565197476f1ec7ac"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
