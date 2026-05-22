class MeshagentAT0414 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.4/meshagent-0.41.4-macos.tar.gz"
  sha256 "3693b3c6a058ee163d36f85df27d07f534bcd084d2514eced5e013d6400583c9"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
