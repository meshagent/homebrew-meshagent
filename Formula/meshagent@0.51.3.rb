class MeshagentAT0513 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.3"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.3/meshagent-0.51.3-macos.tar.gz"
    sha256 "897e5dbfaccb2a4c17d3358b13dd113fd03efb41784387d197a33b6d2790c5f6"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.3/meshagent-0.51.3-linux-arm64.tar.gz"
      sha256 "90b95c12f3548887aff4978d924f3a6077a9c3da889efbf84922b278e87d801a"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.3/meshagent-0.51.3-linux-x86_64.tar.gz"
      sha256 "1d38f755e6079980a346fe4f7090467512e25deee48b89364fd24dffa3be2b1c"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
