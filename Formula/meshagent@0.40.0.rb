class MeshagentAT0400 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.40.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.40.0/meshagent-0.40.0-macos.tar.gz"
  sha256 "3b23b1c555618b8dc443ce84bf89267e77e7e629bb1c8fb7f14e8a392396afa6"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
