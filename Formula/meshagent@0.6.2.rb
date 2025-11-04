class MeshagentAT062 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.2/meshagent-0.6.2-macos.tar.gz"
  sha256 "df0766d406f17d1ab5033b3dbd6e9ada9a2ba6d8ffafbccf3ddedfa7b29016f8"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.2/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "815a287c3f67b995a4a07785f590a794779756ad6ba66cf9ce2b65d6c64b9ee6"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
