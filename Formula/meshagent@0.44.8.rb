class MeshagentAT0448 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.8"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.8/meshagent-0.44.8-macos.tar.gz"
    sha256 "113da0e5e573152d238be09b726a926bdc0644e8d0a84fdc6f9d9d64a620ed1b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.8/meshagent-0.44.8-linux-arm64.tar.gz"
      sha256 "27b2366a25a8e6e4a2a4676b30af4e6f1f9c3f3d9cd6738433bb981691adeeff"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.8/meshagent-0.44.8-linux-x86_64.tar.gz"
      sha256 "305ed2246f6621fda16c5b5606f4647b453fbd79188a10535311eafabca0699b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
