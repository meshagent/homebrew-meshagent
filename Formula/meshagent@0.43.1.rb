class MeshagentAT0431 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.43.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.43.1/meshagent-0.43.1-macos.tar.gz"
  sha256 "d81ecc790e81018a34d927cd6a07a179e47bbe1d56939ccb012a98c487d99cd5"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
