class MeshagentAT083 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.8.3/meshagent-0.8.3-macos.tar.gz"
  sha256 "acf2fa1ae7941b4b109eff4c5bff4342ee16a73ff0fcc209afbd8d90761e264f"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.8.3/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "de6c600ba20d4dd99742835a03d704b17a1587a2d52081a546fcb99fe0fdf71f"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
