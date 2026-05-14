class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.40.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.40.2/meshagent-0.40.2-macos.tar.gz"
  sha256 "3aca4165e7ca315f1258a35e75ebe1d2a9e43d77840089041fa5d7d1895739f6"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
