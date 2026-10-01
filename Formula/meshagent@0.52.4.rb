class MeshagentAT0524 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.52.4"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.52.4/meshagent-0.52.4-macos.tar.gz"
    sha256 "94e21540fefc887ee2587b77c200dff884d02dafb3894bb5691387dee4f7650b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.4/meshagent-0.52.4-linux-arm64.tar.gz"
      sha256 "e15247f336e969cd52d39f3e2bd1dc33ab79b8e0e4321fb4f31d3f4aa7e080d7"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.52.4/meshagent-0.52.4-linux-x86_64.tar.gz"
      sha256 "e087767e7d2fb0000a53d56c15fbd16b7ecb3b7c20931011fd1299d9b7c2f00c"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
