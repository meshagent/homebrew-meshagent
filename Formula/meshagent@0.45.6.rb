class MeshagentAT0456 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.6"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.6/meshagent-0.45.6-macos.tar.gz"
    sha256 "e1666ac8c05aadd1c15610dc177c2bb70f2732590e164c3ad1eb40849b5b2ae1"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.6/meshagent-0.45.6-linux-arm64.tar.gz"
      sha256 "b0fd790eaa3405a720ed836b3a4091145e585d3061129bab07a2485169867478"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.6/meshagent-0.45.6-linux-x86_64.tar.gz"
      sha256 "5e77b1fe9749efeeea6b5d1091f4f8f63ff5149da9ab21b95a0b6544e984a5a0"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
