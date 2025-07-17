class MeshagentAT043 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.4.3/meshagent-0.4.3-macos.tar.gz"
    sha256 "d7220a43c2480f705fcc26c264670ff76c483ab947355fe1097a6a5c424778b4"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.4.3", shell_output("#{bin}/meshagent --version")
  end
end
