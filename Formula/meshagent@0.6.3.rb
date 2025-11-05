class MeshagentAT063 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.3/meshagent-0.6.3-macos.tar.gz"
  sha256 "6b22c17c51e0aea51f48543ec0462dc3605b4d3438ed8836889d891fe5f33d71"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.3/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "efdbbf7b1472e38932f7ee5f4cdb6b8556bcd371c23b4ee68eb9b1e9d8e68c29"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
