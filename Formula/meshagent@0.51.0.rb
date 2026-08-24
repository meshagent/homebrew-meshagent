class MeshagentAT0510 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.0/meshagent-0.51.0-macos.tar.gz"
    sha256 "159e4a68f8a1b8585e8669b547e0f13393ae32599993850b70d91f99696aa9f1"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.0/meshagent-0.51.0-linux-arm64.tar.gz"
      sha256 "b41780fdf10f3c529eec8a140f2b4978e8f2ee50c59b0286061cb26aa88cdd08"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.0/meshagent-0.51.0-linux-x86_64.tar.gz"
      sha256 "c16908b98b88e06a873db82a97c40c4127b98ae15ac460f1cd828044344b384d"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
