class MeshagentAT093 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.9.3/meshagent-0.9.3-macos.tar.gz"
  sha256 "bf71f1814a88afc215af057fe53b95938ba60a726f6e06c0ebcec364520cd4ff"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.9.3/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "704686423c4e527ac15674b1630dcf2f95b31bd6ba86df1b31791c98cebd6c4e"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
