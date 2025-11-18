class MeshagentAT0613 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.13/meshagent-0.6.13-macos.tar.gz"
  sha256 "9dc025e8cfdf9f7da3e81450f8bd707a3a0609759612c12bb0c7b79af4bcbddb"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.13/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "39bafd152296c60995cba04e3b0ff15581848a0cf29acb658611e66ef3320612"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
