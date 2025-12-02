class Meshagent < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.8.0/meshagent-0.8.0-macos.tar.gz"
  sha256 "485a635ec4e718e3942add40bd4c62ce4884925233c9ffd15aa205a1ba336a2d"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.8.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fa8af700e6f047e9991bdf375e1ad235cbc002913edb6218f0b1135ee24b5257"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
