class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.54.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.54.1/meshagent-0.54.1-macos.tar.gz"
    sha256 "4b3c04112bd6895922b1988baa285c7c7719ef62142d0aa8740a210528594e58"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.54.1/meshagent-0.54.1-linux-arm64.tar.gz"
      sha256 "b629f4c79a77224afa65569d8f4a6b40f90505ff0fa9b55e1d85011c7dca9e04"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.54.1/meshagent-0.54.1-linux-x86_64.tar.gz"
      sha256 "c1ddac3a4c0311798b147907e35dfb701d761b59d35ae0e954179bb4b8d7a9b2"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
