class MeshagentAT0501 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.50.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.50.1/meshagent-0.50.1-macos.tar.gz"
    sha256 "0440eae7d1a15206a1822ad1d5efb2f30463519fdc65e06b643c4003e7163dcf"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.50.1/meshagent-0.50.1-linux-arm64.tar.gz"
      sha256 "728f16ed0c6475048c4d87b4c254e62e21a28da7d28189453ac9e8f4e501325d"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.50.1/meshagent-0.50.1-linux-x86_64.tar.gz"
      sha256 "17835b285264dc24f551502a7331f3e9a010c8b6a30ea112cad0c41df9c6c296"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
