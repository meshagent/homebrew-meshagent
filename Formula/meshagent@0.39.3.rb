class MeshagentAT0393 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.3/meshagent-0.39.3-macos.tar.gz"
  sha256 "d86f132d395b46a9ddbf110ae58e42b29bd06deee7ff5cc692d111a40cdc538d"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
