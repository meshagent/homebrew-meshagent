class MeshagentAT0464 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.46.4"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.46.4/meshagent-0.46.4-macos.tar.gz"
    sha256 "ca1f52b6b373b72533de7f949349066ab79b15c2317188ccfaf4d29223acacec"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.4/meshagent-0.46.4-linux-arm64.tar.gz"
      sha256 "02d4fb3dbbbb543eb28f0c091790f393fae2991ac9c98fd16f1beecae9d8789a"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.4/meshagent-0.46.4-linux-x86_64.tar.gz"
      sha256 "7e0ffd2ad0983344fd542aaa0a4cd53d86f41320788105798b0c13777ccee2c9"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
