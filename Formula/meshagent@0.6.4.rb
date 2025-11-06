class MeshagentAT064 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.4/meshagent-0.6.4-macos.tar.gz"
  sha256 "eb730e2708e681df8fa8e56eee8bcbfbe5aadb16d0e69ea9fc259b81411600e3"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.4/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "184bca43c9af697d08d612fccec1be7f5af4d73a9aad5058001c1ea3afdb19d8"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
