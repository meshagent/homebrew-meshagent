class MeshagentAT04410 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.10"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.10/meshagent-0.44.10-macos.tar.gz"
    sha256 "69e4d1d89b31703d57dd5f779dce3446383b55f3ee8dccb573173916613f89d6"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.10/meshagent-0.44.10-linux-arm64.tar.gz"
      sha256 "0282a2360fc08ecd1a0120a602f94615d89d132115762f2c341f1c0c3a852d92"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.10/meshagent-0.44.10-linux-x86_64.tar.gz"
      sha256 "cf760d0bd1637d008c9ae33ff06161210849599ecd6f10ac5fbf534f4cd3b6e0"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
