class MeshagentAT0518 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.18/meshagent-0.5.18-macos.tar.gz"
    sha256 "8012003da5474b6c0d36ea443dbfdf3d83fa5a3f7fff03d2d6776b3792819a7f"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.18", shell_output("#{bin}/meshagent --version")
  end
end
