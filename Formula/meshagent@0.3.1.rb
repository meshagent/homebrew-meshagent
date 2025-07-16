class MeshagentAT031 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.3.1/meshagent-0.3.1-macos.tar.gz"
    sha256 "b46a787e360ee5dc51242a6db5f9855e96d61e81920b3c55eff720178a1f79ab"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.3.1", shell_output("#{bin}/meshagent --version")
  end
end
