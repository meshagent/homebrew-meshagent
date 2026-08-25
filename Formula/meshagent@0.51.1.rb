class MeshagentAT0511 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.1/meshagent-0.51.1-macos.tar.gz"
    sha256 "4f66c2eeeffac1402f3313cfbf42b3c8e6208d8c728eac3a2925a30afe26ed2e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.1/meshagent-0.51.1-linux-arm64.tar.gz"
      sha256 "83d5e29ca2b12508eefa8297f025e3d415ef71381f270b3b1de2052283c2abdf"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.1/meshagent-0.51.1-linux-x86_64.tar.gz"
      sha256 "55544e6a06bb0400e8e41443a246cfec3b1857e56d7613605c0102c2220004fe"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
