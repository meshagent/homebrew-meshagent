class MeshagentAT0432 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.43.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.43.2/meshagent-0.43.2-macos.tar.gz"
  sha256 "53753e02c3efababccc907ac5a09ac45c71b491ef3dd8055e4c160bcac60981a"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
