class MeshagentAT0514 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.14/meshagent-0.5.14-macos.tar.gz"
    sha256 "4e344aa28c7dccdbf007b61fcb371e6a5766529de4c1fde356fc19cb4ba97d85"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.14", shell_output("#{bin}/meshagent --version")
  end
end
