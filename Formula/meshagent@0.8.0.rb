class MeshagentAT080 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.8.0/meshagent-0.8.0-macos.tar.gz"
  sha256 "c881dadfcf64b3acedcc2ed3f40d2453a6203ff44a09f896701948393b3c5a73"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.8.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f1a87fe158d3698320c4ff89aa9aaf56a3ee0ef6c9ab78f20df4e56e28c62d75"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
