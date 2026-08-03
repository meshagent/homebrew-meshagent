class MeshagentAT0471 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.47.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.47.1/meshagent-0.47.1-macos.tar.gz"
    sha256 "6600576c5fc73c44daec82b28771c2d6258d95127cc38599063a8a9c52501b8a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.47.1/meshagent-0.47.1-linux-arm64.tar.gz"
      sha256 "074dd135e4cb6fcc733a190e7567db81e6b1f97f0444bd39ef310770edd17ef6"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.47.1/meshagent-0.47.1-linux-x86_64.tar.gz"
      sha256 "6a7f1eda0ee7938137f82882c0a54a8040927c2348aef97736069f7ead51afaa"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
