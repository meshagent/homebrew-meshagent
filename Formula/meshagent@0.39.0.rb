class MeshagentAT0390 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.0/meshagent-0.39.0-macos.tar.gz"
  sha256 "8a79ce5178f52755efc67a7731784c4623c138b3abf5164bf0de06ab19122c9b"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
