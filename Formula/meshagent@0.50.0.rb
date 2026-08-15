class MeshagentAT0500 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.50.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.50.0/meshagent-0.50.0-macos.tar.gz"
    sha256 "12a8a0578b64fbf882525032d59e1899c4c020c9fc44157cc7f4debf87b826c3"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.50.0/meshagent-0.50.0-linux-arm64.tar.gz"
      sha256 "a23844de2533ee6b384d36a980a892e17d768917e15cf38276a261dad3ff38b6"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.50.0/meshagent-0.50.0-linux-x86_64.tar.gz"
      sha256 "89f74cddbf83cf577332fa098e9e9e165a2cfbd229f221dfaac74080c981d0d3"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
