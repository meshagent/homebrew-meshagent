class MeshagentAT0610 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.10/meshagent-0.6.10-macos.tar.gz"
  sha256 "4a71a42b736959e9171ea375684bd27049885f851f980eefd531481e648f7308"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.10/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "706354908edf0b4cf34a001299a2e518436b3f0f0e17f6d850c0bf0992de7fbf"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
