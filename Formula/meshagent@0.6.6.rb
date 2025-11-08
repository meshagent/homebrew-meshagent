class MeshagentAT066 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.6/meshagent-0.6.6-macos.tar.gz"
  sha256 "045f1f4f325255c0f6193da1b661c44e58408af80c1962556d44f811cb228164"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.6/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6cc46970d1e8cbaf19b56616dc2b0fc4f5365549c927bb70b07188d4c1052a2d"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
