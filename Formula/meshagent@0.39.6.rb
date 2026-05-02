class MeshagentAT0396 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.6"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.6/meshagent-0.39.6-macos.tar.gz"
  sha256 "164ea7d5dee9cdc1eda2afe8feca04724503af0de72ad013375b6a9170e297b2"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
