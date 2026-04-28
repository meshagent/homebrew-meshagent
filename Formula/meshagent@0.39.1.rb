class MeshagentAT0391 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.1/meshagent-0.39.1-macos.tar.gz"
  sha256 "220075876a686c730021d14e8db82bd51b5db609dffca0b6e0153373845f36df"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
