class MeshagentAT060 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/meshagent-0.6.0-macos.tar.gz"
  sha256 "8a9cbf436a104ed1820ab2b2abba23299797f24033d081167f7c7b6c15715682"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "46fa0607c6561a7fa371ed5edb13e1dfdc1fe78f2aa02bac49a8153237ad9eeb"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
