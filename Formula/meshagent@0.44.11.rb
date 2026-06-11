class MeshagentAT04411 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.11"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.11/meshagent-0.44.11-macos.tar.gz"
    sha256 "02130bffa5878a4e51f106309080b5f0d2422f96f54edcad0daa743cab146493"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.11/meshagent-0.44.11-linux-arm64.tar.gz"
      sha256 "2a790898e699c077b1b002a34954ced06bccbdebf0506261b4c51f237c1d3eb3"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.11/meshagent-0.44.11-linux-x86_64.tar.gz"
      sha256 "a7db6aa1981653aac7a7e4a829cfc71b1d74a368f3962b409028b73cc0b4e94b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
