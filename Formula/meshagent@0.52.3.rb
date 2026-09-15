class MeshagentAT0523 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.52.3"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.52.3/meshagent-0.52.3-macos.tar.gz"
    sha256 "568688f88ea91cebe023cc8f2336fab6c5444af783c5d327ea55f4c0b6b19c70"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.3/meshagent-0.52.3-linux-arm64.tar.gz"
      sha256 "8b898b556373c1d2c378e0ef66d6969b38d800dd44922951b8fa30560e35a603"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.3/meshagent-0.52.3-linux-x86_64.tar.gz"
      sha256 "7f670508d59c6aaff43bd3ba2e5f28eb5b2a2c265e5653c61e85e79d90b5b314"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
