class MeshagentAT0444 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.44.4/meshagent-0.44.4-macos.tar.gz"
  sha256 "d4048fac77189f2055c8b6e24b01f8e4ba69788bb3f1f0cb82c2286f4e3296a6"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
