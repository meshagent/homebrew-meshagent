class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.41.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.41.2/meshagent-0.41.2-macos.tar.gz"
  sha256 "7f5a20f953cd734907b2f5bbae321fe06943198c486b1132bebd4a3165aba72b"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
