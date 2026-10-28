class MeshagentAT0561 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.56.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.56.1/meshagent-0.56.1-macos.tar.gz"
    sha256 "b363e9bc8c5adefb78c5fc463cd08ca5b4ac9bbabb9603be072e47be82dfff07"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.1/meshagent-0.56.1-linux-arm64.tar.gz"
      sha256 "d47be78705e130e688c2b780335952ff294cb2ccc5d66441b1dcce723968f7cc"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.56.1/meshagent-0.56.1-linux-x86_64.tar.gz"
      sha256 "e15e9c5d1ddb36c9ff096880d97ffdbf1cdcd765c4f83f82f0e3b5be8eaf1873"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
