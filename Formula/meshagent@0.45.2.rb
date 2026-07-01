class MeshagentAT0452 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.2/meshagent-0.45.2-macos.tar.gz"
    sha256 "0f82ecb9b935f74376ab67ca24291f9d07c32f3e217cb088180fb013f46bf3dd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.2/meshagent-0.45.2-linux-arm64.tar.gz"
      sha256 "5ae4eb55eeb143721bd0cf099d963c15452b6b465408a203539cb6e02a0d911b"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.2/meshagent-0.45.2-linux-x86_64.tar.gz"
      sha256 "9bddf21facaab1f6937e60c6fae053c6f36c43b4eef749ac322f3d35bee12736"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
