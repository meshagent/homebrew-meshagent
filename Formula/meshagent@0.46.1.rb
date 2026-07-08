class MeshagentAT0461 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.46.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.46.1/meshagent-0.46.1-macos.tar.gz"
    sha256 "5011de7ae51b227af6505978f0b741335122735cc741a5bbb3024ed8bdefafbd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.1/meshagent-0.46.1-linux-arm64.tar.gz"
      sha256 "aecc3ec19ea556da0d3bb9f987d8a1cc9b98e6dbc72280d9e27d06584992f599"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.1/meshagent-0.46.1-linux-x86_64.tar.gz"
      sha256 "e60f00d864b2a4b6b8d9daa08b3c5165ac9a93cffcf15fdfea24080c9ae27616"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
