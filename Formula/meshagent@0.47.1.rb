class MeshagentAT0471 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.47.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.47.1/meshagent-0.47.1-macos.tar.gz"
    sha256 "40fee691c904801be0db5dbd10aa387c12091089f987618e121b77c58f6ccc75"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.47.1/meshagent-0.47.1-linux-arm64.tar.gz"
      sha256 "f1c1300d51b08d1b17a8bb6f1f1535b6001a13c8b9b301b50b54a5348619dd9b"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.47.1/meshagent-0.47.1-linux-x86_64.tar.gz"
      sha256 "4b88682b16311db969628ca4ef36845135352d323c4679a6975631e0bd5938a4"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
