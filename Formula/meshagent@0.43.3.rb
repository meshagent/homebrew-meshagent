class MeshagentAT0433 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.43.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.43.3/meshagent-0.43.3-macos.tar.gz"
  sha256 "21c35906a1ef068a0ebc37196d198d7ed9ddeda09072d9c11e1fbad487a9c40a"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
