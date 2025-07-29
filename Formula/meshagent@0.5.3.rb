class MeshagentAT053 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.3/meshagent-0.5.3-macos.tar.gz"
    sha256 "cf65dbcaae79c1408fecf98bc0eccac62bbb45ae3b674eadbca16e1ceeb0773a"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.3", shell_output("#{bin}/meshagent --version")
  end
end
