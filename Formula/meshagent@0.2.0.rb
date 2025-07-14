class MeshagentAT020 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.2.0/meshagent-0.2.0-macos.tar.gz"
    sha256 "6033d9e1b9aeda7bb087f32ca131a09bdc7c624de1260aedd7cafa927f37467e"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.2.0", shell_output("#{bin}/meshagent --version")
  end
end
