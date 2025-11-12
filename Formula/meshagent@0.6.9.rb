class MeshagentAT069 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.9/meshagent-0.6.9-macos.tar.gz"
  sha256 "05f24a319dc940fb50503cd1d67d5250c721696206eda04f2cc9c638a716023c"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.9/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4c0218ed11e9eccb92750386ff0d9c5a102c13f79a8383a699704f3f08ca8983"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
