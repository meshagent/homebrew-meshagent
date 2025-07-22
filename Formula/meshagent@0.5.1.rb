class MeshagentAT051 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.1/meshagent-0.5.1-macos.tar.gz"
    sha256 "5eef674388ff646078f03ca27065e5c769f50f2d125e84809ed96e32a6aa2b08"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.1", shell_output("#{bin}/meshagent --version")
  end
end
