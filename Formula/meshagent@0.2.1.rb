class MeshagentAT021 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.2.1/meshagent-0.2.1-macos.tar.gz"
    sha256 "b6506e7359d88f7ddda7da95a91d957eceef7acfda6e7335ef0a886a60fd5745"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.2.1", shell_output("#{bin}/meshagent --version")
  end
end
