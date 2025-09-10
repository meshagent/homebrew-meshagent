class MeshagentAT0518 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.18/meshagent-0.5.18-macos.tar.gz"
    sha256 "1407748bb116a18c54ebf625b57f44cf799eb5094094e9cf0fe9f22c52cf5184"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.18", shell_output("#{bin}/meshagent --version")
  end
end
