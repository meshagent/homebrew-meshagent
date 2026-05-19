class MeshagentAT0410 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.0/meshagent-0.41.0-macos.tar.gz"
  sha256 "bdbf0b673f6a35361cce9f9b0108a5ede435df8a98ca087915e87bcc15d6b1ee"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
