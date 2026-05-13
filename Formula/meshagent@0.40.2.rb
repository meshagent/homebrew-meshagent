class MeshagentAT0402 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.40.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.40.2/meshagent-0.40.2-macos.tar.gz"
  sha256 "41ef8ddfaeb4e36b9634b75309c43e8946cc18d21ef271127bd7bc266d28096c"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
