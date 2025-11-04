class MeshagentAT062 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.2/meshagent-0.6.2-macos.tar.gz"
  sha256 "c6f077a416068f3d839e02392eb61f2d8933dff23915cb0f7f35372bf2f61174"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.2/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "05cbaefc355267ddc90a44557d3e6145c1eea9757fa07bb1b11efc47e4c973b1"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
