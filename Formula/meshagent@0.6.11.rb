class MeshagentAT0611 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.11/meshagent-0.6.11-macos.tar.gz"
  sha256 "dfe478fed91858b1e6bd0140b7b0369e9789ff69d99aa7df12aa6dc2e018a6ca"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.11/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6b3acaccc7bad97a64b571257bfde738c72a3a25fb90c5b293e210e7740bd77e"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
