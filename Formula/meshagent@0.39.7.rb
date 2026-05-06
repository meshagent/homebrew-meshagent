class MeshagentAT0397 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.7"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.7/meshagent-0.39.7-macos.tar.gz"
  sha256 "79d587e9ef3a79bb70c586e841c0ebbe4bf69bb830972d1f812bc593d8cc6fd7"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
