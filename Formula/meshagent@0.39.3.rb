class MeshagentAT0393 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.3/meshagent-0.39.3-macos.tar.gz"
  sha256 "10a0a59189b976a496f8554f841d24c2564f1e335a43fb55e2fc224ef4159c87"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
