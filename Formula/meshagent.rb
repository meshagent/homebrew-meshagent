class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.52.3"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.52.3/meshagent-0.52.3-macos.tar.gz"
    sha256 "a24678655f7f9cabbe0026d67c95c039b34250d0d39a7c5a1b1ca363dadd3663"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.3/meshagent-0.52.3-linux-arm64.tar.gz"
      sha256 "c79c3194812de3a5c40181ad594e6cf9eb4d3583b390dbf1033a428bfd0a02c5"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.3/meshagent-0.52.3-linux-x86_64.tar.gz"
      sha256 "8617018e232b7783958c66600ae7ab4d8d88a4d076e48d3ace6927f9561c134a"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
