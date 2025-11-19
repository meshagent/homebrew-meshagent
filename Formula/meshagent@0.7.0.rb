class MeshagentAT070 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.7.0/meshagent-0.7.0-macos.tar.gz"
  sha256 "7f5d7aed28244c1ef036529c67cab8f2eac81e7448db6739ac3d6af09fba3949"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.7.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a38085c344eb88ad82fe374228561342404e63f1299febb1953f9f97a546c7fe"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
