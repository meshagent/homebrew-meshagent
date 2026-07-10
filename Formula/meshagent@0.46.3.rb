class MeshagentAT0463 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.46.3"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.46.3/meshagent-0.46.3-macos.tar.gz"
    sha256 "4a03240ce23cf33f08e00a104cbe11974282b7ced380d77121382e2f9fd627a0"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.3/meshagent-0.46.3-linux-arm64.tar.gz"
      sha256 "8e38e66d8b4eda70655d3d13eac899fa193b1e1a059af8b473cb8a41aa957d55"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.3/meshagent-0.46.3-linux-x86_64.tar.gz"
      sha256 "70c3decc30f49d298ba563042abb98ce78ba69cfab49ea1f1c7918b87dd001e9"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
