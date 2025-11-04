class MeshagentAT061 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.1/meshagent-0.6.1-macos.tar.gz"
  sha256 "45020bc5b95d66d8df6e9c5b52dadf3bfbfae573b707d0396b842ee5af75850a"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.1/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "449207f628ba899e9bc461076b045149fc186bcb9d9ba4cf28959ec47c6626f3"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
