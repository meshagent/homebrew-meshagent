class MeshagentAT065 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.5/meshagent-0.6.5-macos.tar.gz"
  sha256 "c8b103fa38c5f851c17bd6a56bcb0f06bc110594de1514a7daeb8110188d7aa3"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.5/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7aa849a67f62d267be5b9e80dbee3f3e3242f8fc6d70911f81cbc089819520d3"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
