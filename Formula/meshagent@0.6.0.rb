class MeshagentAT060 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/meshagent-0.6.0-macos.tar.gz"
  sha256 "b921667c8ba9c76c4f78fd899d00a6237c1cd236a26f8be8a815e48fd4394ada"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b1f4030b39d8deb99e5f211e684a0abf4df4324a54fde04b4a1e0063deddfb66"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
