class MeshagentAT0562 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.56.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.56.2/meshagent-0.56.2-macos.tar.gz"
    sha256 "a45e67f8c38b0319547cc23cd5342dd89dec63da78d12b95b9060804547bdd32"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.2/meshagent-0.56.2-linux-arm64.tar.gz"
      sha256 "ce87d3a8e44e9ba45273971ebfde2af5f027c9cdce066563368b1e7ccd7e05a7"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.2/meshagent-0.56.2-linux-x86_64.tar.gz"
      sha256 "ef206f440c31488b602e4702535d8b95ef890d95fda053916c3fca15e3754e1d"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
