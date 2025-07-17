class MeshagentAT041 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.4.1/meshagent-0.4.1-macos.tar.gz"
    sha256 "c6763d28dbd6d32245b4efba653ebb1bd548095f34060c1daf8a514a8a777037"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.4.1", shell_output("#{bin}/meshagent --version")
  end
end
