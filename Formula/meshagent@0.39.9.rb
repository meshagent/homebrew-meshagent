class MeshagentAT0399 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.9"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.9/meshagent-0.39.9-macos.tar.gz"
  sha256 "10b5d6ab31a84c14da72b7deae5cd2957e7cb38ecdf07fd22ac515b96d1d6dbe"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
