class MeshagentAT050 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.0/meshagent-0.5.0-macos.tar.gz"
    sha256 "085c1794e8427d303c4a4690352911fd55261e5a097a91bee344e968c33f08f8"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.0", shell_output("#{bin}/meshagent --version")
  end
end
