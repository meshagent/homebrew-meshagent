class MeshagentAT0415 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.5"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.5/meshagent-0.41.5-macos.tar.gz"
  sha256 "430e6e59a4bb4b77171ddb8e2008a10b5587a8516f44a859a75bd97071809669"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
