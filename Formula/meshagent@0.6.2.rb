class MeshagentAT062 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.2/meshagent-0.6.2-macos.tar.gz"
  sha256 "4608267e7b7b342ff8220a5d37bbc06438b5747f51d8882ce20505d0f4bdc109"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.2/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bde0941e6ba4e2b878ac088136e73e92d4cd17cd68a3ee69f7f64ee6786fb740"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
