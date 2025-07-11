class Meshagent < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.1.0/meshagent-0.1.0-macos.tar.gz"
    sha256 "b2cfafab0086019bcaa64d72c928ec8ff0e7de255a44a0e7d9cb7293571a3c35"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.1.0", shell_output("#{bin}/meshagent --version")
  end
end
