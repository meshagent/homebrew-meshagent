class MeshagentAT0612 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.12/meshagent-0.6.12-macos.tar.gz"
  sha256 "8c939e31497df4d0bb5e123e48a78788db0cb125ee77d91748fc35a7ce0f3bf6"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.12/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4609d64980f96b12fb473153c0d525fd92b9e75565e2037b068d4e8cbe2b70c6"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
