class MeshagentAT082 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.8.2/meshagent-0.8.2-macos.tar.gz"
  sha256 "fbd33cd604836a0c2370ed5796435cddae4cdfd28904c7a6c0f030f586c666fc"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.8.2/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8126b04cf5175f2531436f826fba3c796c8f6084eb26a9d4cab7c9b94cadb7e2"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
