class MeshagentAT0513 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.13/meshagent-0.5.13-macos.tar.gz"
    sha256 "0c7115e788b22431be08622d8cee426358ce7138049717f8272571fc0ebd3d64"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.13", shell_output("#{bin}/meshagent --version")
  end
end
