class MeshagentAT0411 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.1/meshagent-0.41.1-macos.tar.gz"
  sha256 "d5c61719900ae29d428fec1a3e9195d47d2dc8eb196a3aa128a27a1de0b16ac7"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
