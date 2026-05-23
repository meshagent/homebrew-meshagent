class MeshagentAT0419 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.9"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.9/meshagent-0.41.9-macos.tar.gz"
  sha256 "57292edc504af30dac8e7eb7c80c7aa83a2314cec637c9306bedb24b92e6a100"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
