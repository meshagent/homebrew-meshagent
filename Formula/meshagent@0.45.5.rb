class MeshagentAT0455 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.5"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.5/meshagent-0.45.5-macos.tar.gz"
    sha256 "f801c4f524fa3098bbdbc9fe259574644f0cbb632dcdbe5955c8555f8cb4b645"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.5/meshagent-0.45.5-linux-arm64.tar.gz"
      sha256 "51f270b59c58de6cf505b30a99855825e0faced4e2ead470d9610276fa23ef0a"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.5/meshagent-0.45.5-linux-x86_64.tar.gz"
      sha256 "29e766ca0d59460eb1fad0a580d08efa12866a9420185cb7c2a90dd2bced2f1b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
