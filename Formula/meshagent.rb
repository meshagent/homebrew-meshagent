class Meshagent < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.5.14/meshagent-0.5.14-macos.tar.gz"
    sha256 "49f4102ada3ebdb1f66e0f8a5b82cc1a328e078db7aca9c5f1b19ed65f07e6b6"
  end  

  def install
    bin.install "meshagent"
  end

  test do
    assert_match "Meshagent v0.5.14", shell_output("#{bin}/meshagent --version")
  end
end
