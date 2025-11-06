class Meshagent < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.6.4/meshagent-0.6.4-macos.tar.gz"
  sha256 "9b1d5873f57f70e7765bb8f654865abbba08f808ba0a94ce2c6298be615e47a3"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.6.4/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "490c94ee1e715a6bb78c810250fce7298fa4b0f0a6f80df09e4d91dbdcae9c7c"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
