class MeshagentAT0420 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.42.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.42.0/meshagent-0.42.0-macos.tar.gz"
  sha256 "ca34463ca17b51a16a87d8770f0600fded2ef003226a4a1b7f0f0f6bf75b2bbb"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
