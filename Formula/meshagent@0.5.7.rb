class MeshagentAT057 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.7/meshagent-0.5.7-macos.tar.gz"
    sha256 "1dbea476f14352645dfa148afdc7bec7ca503810c8d77ec2ae9fa19a465fced0"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.7", shell_output("#{bin}/meshagent --version")
  end
end
