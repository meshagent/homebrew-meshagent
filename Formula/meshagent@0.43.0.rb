class MeshagentAT0430 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.43.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.43.0/meshagent-0.43.0-macos.tar.gz"
  sha256 "6b3fd1600805d86bf488dccafba86121277a526a3a5b63232f1b3b2f841efc4a"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
