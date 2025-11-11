class MeshagentAT068 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.8/meshagent-0.6.8-macos.tar.gz"
  sha256 "13cde92f7fc2b76e1306e8c16a61ac6588abdb00e5c6cab36fe1003f8e3e7444"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.8/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "31133c77d7eddbf0e7b8494041910b06396fc258cea6c426e16a0deb9d04caa0"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
