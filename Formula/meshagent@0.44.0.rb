class MeshagentAT0440 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.44.0/meshagent-0.44.0-macos.tar.gz"
  sha256 "8bed0a160118bfd788b78b2c30e6746f01078376eebb5cdae5d44a6d81f536c0"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
