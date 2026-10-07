class MeshagentAT0534 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.53.4"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.53.4/meshagent-0.53.4-macos.tar.gz"
    sha256 "61228fb5b53a29feabc609c410ccc43cc0143a26e6dac8e4dea98a5338a9b27e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.4/meshagent-0.53.4-linux-arm64.tar.gz"
      sha256 "2bc32dae85604a5f89971dcdc29366b0cf6dfae77c40a61d5cd75639eddab8d4"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.4/meshagent-0.53.4-linux-x86_64.tar.gz"
      sha256 "e6f10c704077ba3c3bb2a592f158bdcabdecf1a5e7a13d0e728b863c421ca98b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
