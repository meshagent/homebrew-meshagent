class MeshagentAT0480 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.48.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.48.0/meshagent-0.48.0-macos.tar.gz"
    sha256 "67e79c0a7ad3a4db993b06e454572f9d7922862e570db9880b0ea3b6ef6e0d99"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.48.0/meshagent-0.48.0-linux-arm64.tar.gz"
      sha256 "cd548f921e6008319c976cec23260daf4f5fc99a9202690f7ce6216007e7d9fe"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.48.0/meshagent-0.48.0-linux-x86_64.tar.gz"
      sha256 "6467455a87d2cb6603c43e1fcc22a04f6b5a4455b7bea350d776b6d89154e352"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
