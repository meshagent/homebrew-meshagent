class MeshagentAT0454 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.4"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.4/meshagent-0.45.4-macos.tar.gz"
    sha256 "de576174f0466e28f8ff28acb5082442f3b4cb3d173f32849d3bad298fe10879"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.4/meshagent-0.45.4-linux-arm64.tar.gz"
      sha256 "ae144b01f5382c1cd01f257970c5bc97de527ebe6a028a28e1751e2868783067"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.4/meshagent-0.45.4-linux-x86_64.tar.gz"
      sha256 "d178f6d33d59d464f764bb82adbcee4e02e67d6ed74a6640359f33bfc03cfbd4"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
