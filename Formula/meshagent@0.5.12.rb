class MeshagentAT0512 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.12/meshagent-0.5.12-macos.tar.gz"
    sha256 "424040d0ed64b3259661d1100c9a60d4d2cbaf163daf9594d0a14dffa3fe9e98"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.12", shell_output("#{bin}/meshagent --version")
  end
end
