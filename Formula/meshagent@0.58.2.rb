class MeshagentAT0582 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.58.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.58.2/meshagent-0.58.2-macos.tar.gz"
    sha256 "d9c938b7838a9153fd497d21d48ade937b52db9e1041d114041d962449457485"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.2/meshagent-0.58.2-linux-arm64.tar.gz"
      sha256 "84ff24a527cfda318605c590a7f96665fc6e0d1e8d77bf7f22de532a33f09758"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.2/meshagent-0.58.2-linux-x86_64.tar.gz"
      sha256 "00061b5481b87a2ec7047e70abe2911b5cfb33c2984f478e62ce3144d76ad942"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
