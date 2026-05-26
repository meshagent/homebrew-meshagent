class MeshagentAT0422 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.42.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.42.2/meshagent-0.42.2-macos.tar.gz"
  sha256 "ef39cd2451f8b766a97d624aa9feb4159ec2c7cd3e4645b75631e60a68bfbdba"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
