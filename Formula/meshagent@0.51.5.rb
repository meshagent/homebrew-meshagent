class MeshagentAT0515 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.5"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.5/meshagent-0.51.5-macos.tar.gz"
    sha256 "a65cb9ae178b1facd513764b15cca4fda5a9d46b90fe1bacbc67fe319477bf57"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.5/meshagent-0.51.5-linux-arm64.tar.gz"
      sha256 "c9b9ce514ecbb442d3b7e79413e10964424631ba4c591152423ef167b18bf03f"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.5/meshagent-0.51.5-linux-x86_64.tar.gz"
      sha256 "d9d40b146fa9bef67c51f6ec198fa9cd1c0eae5868643a5be8d487cc99aa8bda"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
