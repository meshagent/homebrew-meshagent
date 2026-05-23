class MeshagentAT0416 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.6"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.6/meshagent-0.41.6-macos.tar.gz"
  sha256 "38a18ea2b6c97850fea5bccd5332ef3c1603a606920878f120f67ff827aa8b7a"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
