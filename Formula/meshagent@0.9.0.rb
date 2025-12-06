class MeshagentAT090 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.9.0/meshagent-0.9.0-macos.tar.gz"
  sha256 "25a8520211d31a8cd02d17aefc9916362b3d8c86deaef26c9dac0f9f4ff23d3e"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.9.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a35927302741de7d1439cb03de46ab9d7b9687606757dc40aeb8cc2986d1ff50"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
