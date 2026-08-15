class MeshagentAT0500 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.50.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.50.0/meshagent-0.50.0-macos.tar.gz"
    sha256 "78d0b01d7561d14e9732e296580aa8f77c77f778064b76ffd4d93fdc7be327f2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.50.0/meshagent-0.50.0-linux-arm64.tar.gz"
      sha256 "c7a322c3fac481812eff33c8a1d7570dfefd6db6c8ddf25569d3e6390488b770"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.50.0/meshagent-0.50.0-linux-x86_64.tar.gz"
      sha256 "5252ebc8274133c490ef4df29ed2c4e85cb1e8493c6ed87d225b9c3110a55c95"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
