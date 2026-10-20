class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.55.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.55.0/meshagent-0.55.0-macos.tar.gz"
    sha256 "123227c6e88f4a48e7338cf9fb9f6ea82ca2f4b6fb8796f1ee84db3fd1ed95bd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.55.0/meshagent-0.55.0-linux-arm64.tar.gz"
      sha256 "24bc59f2b4ce22115d3693e939e2c764355c5e5d5f668642f5bea4a37151aa63"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.55.0/meshagent-0.55.0-linux-x86_64.tar.gz"
      sha256 "bac54425f98a354b4b51dc7e0a6c08dd7bf93a35ab57e516ee6ab3d9d2f1492a"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
