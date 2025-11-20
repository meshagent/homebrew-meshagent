class MeshagentAT071 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.7.1/meshagent-0.7.1-macos.tar.gz"
  sha256 "fd8eb4ca3053d08dc7f56ac7e550baa81adb85172e23a8a8e38520b4a62f88a2"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.7.1/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2fc689e7fa15731eae5504b744918a7fa0b7bbeda0e52a6df7bec84a0019700d"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
