class MeshagentAT0445 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.5"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.5/meshagent-0.44.5-macos.tar.gz"
    sha256 "bfa35b3916457cf777809d9fa448eceec951904c5f3e0b184b148ca1443805bc"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.5/meshagent-0.44.5-linux-arm64.tar.gz"
      sha256 "7f85d63fad73cd52a99b14007f78608da7b63e08272764e7c0929900bd0aca9e"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.5/meshagent-0.44.5-linux-x86_64.tar.gz"
      sha256 "bef52441d02889afc8a8c69fbece88636f6efec0b19f095d9780cc1d81ed0ec2"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
