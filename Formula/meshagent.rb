class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.58.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.58.0/meshagent-0.58.0-macos.tar.gz"
    sha256 "023199824c7796f042dffe860d706ca7767c8fc0156ead3ae76adec3929b0cbc"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.0/meshagent-0.58.0-linux-arm64.tar.gz"
      sha256 "deebf1b9ce7e6e1bb43bca54f2070ce54280121195069b8de8a5348525b2760a"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.0/meshagent-0.58.0-linux-x86_64.tar.gz"
      sha256 "262a088509cfacc97f4d9e0a88f67c27d7d665ab311f38ba1065ea69e5a0037b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
