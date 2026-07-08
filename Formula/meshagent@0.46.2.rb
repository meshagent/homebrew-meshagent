class MeshagentAT0462 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.46.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.46.2/meshagent-0.46.2-macos.tar.gz"
    sha256 "66a4c5e5a67f2f3afc99f8bd64a7030a6c2881cee074da3398a8a6c794243079"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.2/meshagent-0.46.2-linux-arm64.tar.gz"
      sha256 "6e7ccc2f09615d19aa4e39924183d1f5db414569b7aa13bae7930d8d10fbec28"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.2/meshagent-0.46.2-linux-x86_64.tar.gz"
      sha256 "119386e5e5cf2ea4844df9b411588ee270fc42323ed24faf6dfc11360377d3f1"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
