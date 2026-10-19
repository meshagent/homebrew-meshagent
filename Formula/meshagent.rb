class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.54.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.54.0/meshagent-0.54.0-macos.tar.gz"
    sha256 "818168094d59b5ed40899e35635c1a181d6df808add6316481edd5095672f880"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.54.0/meshagent-0.54.0-linux-arm64.tar.gz"
      sha256 "b64bd586e411ab5040be1b75ea3d0a0928cd35100611c85426e76bd572238d68"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.54.0/meshagent-0.54.0-linux-x86_64.tar.gz"
      sha256 "059bf304a90758c1e22c731e8a8c94a947c7f9c491546c5804807126cd1a648b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
