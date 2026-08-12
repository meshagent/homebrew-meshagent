class MeshagentAT0490 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.49.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.49.0/meshagent-0.49.0-macos.tar.gz"
    sha256 "9b22087ffeb7e7aa63ae780f613a49d704968f36f838f70c6800d123c3cae67a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.49.0/meshagent-0.49.0-linux-arm64.tar.gz"
      sha256 "41be41848c5e28fa1693dc256e655cf13fa40919d5cd0a674fefd6302655f97e"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.49.0/meshagent-0.49.0-linux-x86_64.tar.gz"
      sha256 "c4620a17753f507e2a085472b5200c4f3e557e1bc336ffdfdbac14267d49aea1"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
