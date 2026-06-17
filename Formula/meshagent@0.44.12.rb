class MeshagentAT04412 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.12"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.12/meshagent-0.44.12-macos.tar.gz"
    sha256 "30d118055a6473abf7c3d643db1d56bcd83cd0c5ce54d5d4a2312186d7657689"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.12/meshagent-0.44.12-linux-arm64.tar.gz"
      sha256 "583065666c4fc53f750b56c961472c8728364e873f6391fa0979326b741226a5"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.12/meshagent-0.44.12-linux-x86_64.tar.gz"
      sha256 "5e08731b9196a3167d28258acb55540c9309c634991e33f46106abad1e102e39"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
