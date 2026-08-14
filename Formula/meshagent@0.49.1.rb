class MeshagentAT0491 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.49.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.49.1/meshagent-0.49.1-macos.tar.gz"
    sha256 "94893ad0db3459553bca1dbe1fc87d7343a9134657cd9f36f8289bc9732031c0"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.49.1/meshagent-0.49.1-linux-arm64.tar.gz"
      sha256 "9e386a02adb20f0ddafb016ff92cb28cff8d74952f7a9a2e6247d8a607ad0790"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.49.1/meshagent-0.49.1-linux-x86_64.tar.gz"
      sha256 "9035e965e3748a587468c8395d83e2e1bcb269c87c9974d4636ee934002a2643"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
