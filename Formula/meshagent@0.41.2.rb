class MeshagentAT0412 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.2/meshagent-0.41.2-macos.tar.gz"
  sha256 "b066c8e60817e72ed286e7bed23af50aa21bd176c4263b104be2fa47e51bdd4a"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
