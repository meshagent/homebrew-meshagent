class MeshagentAT0398 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.8"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.8/meshagent-0.39.8-macos.tar.gz"
  sha256 "137d393d69f5a4f3cb18099cec643151234d2d778a4c62dad0b7b7d892c64279"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
