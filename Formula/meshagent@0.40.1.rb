class MeshagentAT0401 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.40.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.40.1/meshagent-0.40.1-macos.tar.gz"
  sha256 "be63afb55b54bc48659ec9405787503191878859da2019916ce2ee55b59aad0c"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
