class MeshagentAT0516 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.6"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.6/meshagent-0.51.6-macos.tar.gz"
    sha256 "c764cf713843f18f2a527ea270a98f9b1b576308d6cb0f278e345af1eebb4af6"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.6/meshagent-0.51.6-linux-arm64.tar.gz"
      sha256 "458bfc46182e99a829387e5ec679be26772f2a395d0b2757f4881c731ca5cac4"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.6/meshagent-0.51.6-linux-x86_64.tar.gz"
      sha256 "a011c2520900697be754e519744a99861fcfbc5cfa9ddfb2ce06f2aa2af33a52"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
