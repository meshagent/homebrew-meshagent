class MeshagentAT060 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/meshagent-0.6.0-macos.tar.gz"
  sha256 "a53c4941a32687f944ff3d3ff384973f003f2b14f5f50ee94b77dfe7a737c9ac"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "be547b1336a4dcd275907bdb6d6fb50f01fd423211aed8a1fa1f7a4a831b271b"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
