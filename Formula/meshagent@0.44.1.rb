class MeshagentAT0441 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.44.1/meshagent-0.44.1-macos.tar.gz"
  sha256 "39363f028102943177e225431f22dda424e1809dffb7b2f6e0a0890b68b9b0f0"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
