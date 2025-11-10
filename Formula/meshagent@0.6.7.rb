class MeshagentAT067 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.7/meshagent-0.6.7-macos.tar.gz"
  sha256 "2a3fb571c1147e6120de25c629afba5fef3d7937e51dde5fb798353db770387d"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.7/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "37e9cf7ecb92207028c54f7429b1943e45bb1fc941767f4c019860c1959565d6"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
