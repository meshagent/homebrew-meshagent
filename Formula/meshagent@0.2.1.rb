class MeshagentAT021 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.2.1/meshagent-0.2.1-macos.tar.gz"
    sha256 "4b3f82c432712157c5e186bc023fef9aea359b12102739677cec8e5abfbb52e3"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.2.1", shell_output("#{bin}/meshagent --version")
  end
end
