class MeshagentAT0392 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.2/meshagent-0.39.2-macos.tar.gz"
  sha256 "add098545c1cc8a5068eef84cbc884101fa1d0cdfecaa2bf58280d599e08566d"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
