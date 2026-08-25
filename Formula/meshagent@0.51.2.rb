class MeshagentAT0512 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.2/meshagent-0.51.2-macos.tar.gz"
    sha256 "daf3b4e8e33e3e416073abb5f3c1e3ba505c5681331f649115844bc8e2387aee"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.2/meshagent-0.51.2-linux-arm64.tar.gz"
      sha256 "615a04fe69dc297a93e33231c4db8dc53448b1ed03b31b83524c762d4bc55a7f"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.2/meshagent-0.51.2-linux-x86_64.tar.gz"
      sha256 "d7f3c90e9f7d175f2ea1e959e1116074f1cae906be68f332c311b8f2973631ae"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
