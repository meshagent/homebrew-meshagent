class MeshagentAT084 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.8.4/meshagent-0.8.4-macos.tar.gz"
  sha256 "a86478e79a4b4c594410a641d4e55c5629bf04c5b994b7a99cdd495059dab09e"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.8.4/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9ddf8e6c5110d3240db79ad3dff377610a41cf2f60dfa1654797df2d5f1976cf"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
