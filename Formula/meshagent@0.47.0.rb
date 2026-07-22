class MeshagentAT0470 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.47.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.47.0/meshagent-0.47.0-macos.tar.gz"
    sha256 "4c60e5687f9c88cd21c906b72bb3e4a8d9fbcce3dcb0b7f9734f5019b4746495"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.47.0/meshagent-0.47.0-linux-arm64.tar.gz"
      sha256 "521970f67355af8e7490f0a7e6015d7db64ed0db377b0a685a588378e8dec7ed"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.47.0/meshagent-0.47.0-linux-x86_64.tar.gz"
      sha256 "5bbfb816450f91ad650b8043f12cbc3392e70acb45728150380fcf3759847af9"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
