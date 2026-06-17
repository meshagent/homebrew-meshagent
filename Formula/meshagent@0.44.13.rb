class MeshagentAT04413 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.13"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.13/meshagent-0.44.13-macos.tar.gz"
    sha256 "89cadda2d3bc8ecf652cfa3ae22de88a5edb7e10e72de4c6f7f1d52a13bdf173"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.13/meshagent-0.44.13-linux-arm64.tar.gz"
      sha256 "af9edd3fd95e2db25935548a8bcf2dccb6ee56277675afb15337d438cf38e591"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.13/meshagent-0.44.13-linux-x86_64.tar.gz"
      sha256 "cd6ffde7e7c45de63d2b053f00a7e1f4821da28dcced4a8564d09cce8c118c90"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
