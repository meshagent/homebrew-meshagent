class MeshagentAT0397 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.7"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.7/meshagent-0.39.7-macos.tar.gz"
  sha256 "1081a9aa5a4579320212ece9aa39e31e972cb20aa7bce5e1bb08d756ce53ee53"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
