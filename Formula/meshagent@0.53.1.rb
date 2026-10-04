class MeshagentAT0531 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.53.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.53.1/meshagent-0.53.1-macos.tar.gz"
    sha256 "652b9e4403b62b0c653314bea8986aeb90862fba2b52561b6cb03cbabf284bf5"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.1/meshagent-0.53.1-linux-arm64.tar.gz"
      sha256 "7de657941dd6af3cd6eb867c03d2561ba46a0b324fc7ef9ed85b6021fd6bcac3"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.1/meshagent-0.53.1-linux-x86_64.tar.gz"
      sha256 "49b9c1c37783784d9885427316f0c16ae5ad7606bbce7b31ae9e58e46085834a"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
