class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.58.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.58.2/meshagent-0.58.2-macos.tar.gz"
    sha256 "c6f1d4f472e8747ba9a534d3ee958351ef2deeb235745afd6c21a083bc84d79a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.2/meshagent-0.58.2-linux-arm64.tar.gz"
      sha256 "e6268b86cf626f21f7b96ff3c95302b64169ff6dc995bcd03f28a41208b04cf4"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.2/meshagent-0.58.2-linux-x86_64.tar.gz"
      sha256 "610856d8b66d10a229d4f86d0ae8ef9cc74804e19d83d3b2d28a2375bbe70531"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
