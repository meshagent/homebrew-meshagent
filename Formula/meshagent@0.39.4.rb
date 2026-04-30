class MeshagentAT0394 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.4/meshagent-0.39.4-macos.tar.gz"
  sha256 "e21be5bf271ea0061dc00c59dae7e672f9661383ffde5f6ef1bd4adb08cc014c"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
