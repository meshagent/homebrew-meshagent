class MeshagentAT092 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.9.2/meshagent-0.9.2-macos.tar.gz"
  sha256 "3b5cda8e371e09d37e358c39506a5b20ef17660c59d5f8c9178294b8c68a7611"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.9.2/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "458fcd76b9da4475aea85d829f3284bee088d44abd91adf98ba1e95cb131c488"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
