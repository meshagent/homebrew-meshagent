class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.7"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.7/meshagent-0.45.7-macos.tar.gz"
    sha256 "f79520d71c8b08eecf94977c716f42c50f19f5209845bd2236a56b0e7f3b459b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.7/meshagent-0.45.7-linux-arm64.tar.gz"
      sha256 "f1979724c65886765f2726a6d3f37058570af75be1c55ab7f3001291378022b7"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.7/meshagent-0.45.7-linux-x86_64.tar.gz"
      sha256 "a5f33eabb5c621b4e93c6575858917138c9af7a23d8c7a2061f5475d317d8753"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
