class MeshagentAT0530 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.53.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.53.0/meshagent-0.53.0-macos.tar.gz"
    sha256 "14b6618781c0719b8e7d16935d3549083435b2968800186a7c6f232d36de8b40"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.0/meshagent-0.53.0-linux-arm64.tar.gz"
      sha256 "ed7102278bbc805807ae6fb5c7ad74dc8813942e203bbc1372c373ae8513bf93"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.0/meshagent-0.53.0-linux-x86_64.tar.gz"
      sha256 "1a8e7d975b1053dfca3fe65b395b5ac216de634d7b50cbd658dda41813f2241e"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
