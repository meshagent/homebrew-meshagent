class MeshagentAT0451 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.1/meshagent-0.45.1-macos.tar.gz"
    sha256 "eb352ecdd4114f4e80eefd11d316f3f52123a1828df36840bca9402cf099c9c2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.1/meshagent-0.45.1-linux-arm64.tar.gz"
      sha256 "926f4516ff28500b1cc71ac82f4fe9c0335200ce94ef348eadfef85440ed77b6"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.1/meshagent-0.45.1-linux-x86_64.tar.gz"
      sha256 "03f1f34a7bd556eb09e657794d5c2a615db1011fa0918d611247ec59693dec52"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
