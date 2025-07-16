class MeshagentAT030 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.3.0/meshagent-0.3.0-macos.tar.gz"
    sha256 "941d3de80df99b9ad2e6ceb3a586a5db7b17bd17b88f3ab3b029877e55a47359"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.3.0", shell_output("#{bin}/meshagent --version")
  end
end
