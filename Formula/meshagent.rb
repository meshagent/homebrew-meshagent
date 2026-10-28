class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.56.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.56.1/meshagent-0.56.1-macos.tar.gz"
    sha256 "868926798c67cf8c291af67f51d5c066f63bc0c2ec7ddc361262a5b6330ed6d2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.1/meshagent-0.56.1-linux-arm64.tar.gz"
      sha256 "a7c83718c20752f51cf29d9bc391b8b0e2a4304c581e9f52880536e180f63125"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.1/meshagent-0.56.1-linux-x86_64.tar.gz"
      sha256 "1e700e534847f8f09002e6432400f34402537d1d5f787cd24bdbc7723f7cf111"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
