class MeshagentAT0417 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.7"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.7/meshagent-0.41.7-macos.tar.gz"
  sha256 "fc4af15e21777f0050fd9dfbefcddc06c9855b627d6c3387d5ee7936f8d404af"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
