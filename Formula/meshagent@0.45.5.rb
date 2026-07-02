class MeshagentAT0455 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.5"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.5/meshagent-0.45.5-macos.tar.gz"
    sha256 "e8ceb315f78da87b0a1be3998082b141fc5e12055d82e8d845c7afbe0040057d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.5/meshagent-0.45.5-linux-arm64.tar.gz"
      sha256 "017cbd67323ad32597fab2e52a7c0f6e19f4e0ee04c06388ada2bf0c61a4c493"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.5/meshagent-0.45.5-linux-x86_64.tar.gz"
      sha256 "5bbbb96edb86d8cc8d2f5b9b670e7e7c30aaad12d24ddef2ea650093d16fcdef"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
