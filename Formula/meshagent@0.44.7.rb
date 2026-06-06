class MeshagentAT0447 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.7"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.7/meshagent-0.44.7-macos.tar.gz"
    sha256 "3aeea92b0a6220a4ccba07e7cca8d26678892918640cf36fe6122c6f2d32f03b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.7/meshagent-0.44.7-linux-arm64.tar.gz"
      sha256 "2b56480b149540a46b91914dffd60793444167dfd99357777dad55cc2fbf72e3"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.7/meshagent-0.44.7-linux-x86_64.tar.gz"
      sha256 "79633951a798c582d8ef2f2d289da82755645c472c291193dcc9363308d1dc52"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
