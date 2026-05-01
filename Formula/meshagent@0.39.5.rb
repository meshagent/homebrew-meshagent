class MeshagentAT0395 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.5"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.5/meshagent-0.39.5-macos.tar.gz"
  sha256 "d3272695b94a036fb357b008e1323c42d9e36894778c5d0a30cdd2af30724df4"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
