class MeshagentAT0457 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.7"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.7/meshagent-0.45.7-macos.tar.gz"
    sha256 "2578c89f277bccb9d1fea4058769b5231b48ef7efd56b1655cea708a5f957ba7"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.7/meshagent-0.45.7-linux-arm64.tar.gz"
      sha256 "d891643ef2c639506d84e1d2767c3638180a92edf7cb1886ea8c0add7b50ef45"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.7/meshagent-0.45.7-linux-x86_64.tar.gz"
      sha256 "b1538e2e2da16c3ecd15ed0ebc970cdb322f934d57a17f6feb1eccec2ea36d35"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
