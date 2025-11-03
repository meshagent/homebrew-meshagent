class Meshagent < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/meshagent-0.6.0-macos.tar.gz"
  sha256 "40b584128b3211d32644001f7551514db4f075677d9cebb148a7c3c7cd4f8ee5"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.0/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8315664c955ec757caca6a9a87c4f9982beaf07fccf9245247e6c662b08098e1"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
