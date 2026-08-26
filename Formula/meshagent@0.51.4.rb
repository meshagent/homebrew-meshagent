class MeshagentAT0514 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.51.4"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.51.4/meshagent-0.51.4-macos.tar.gz"
    sha256 "4d2803d248dcf12119b713c600f54d546f231729b2c26c0f22eb0cee274ce23c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.4/meshagent-0.51.4-linux-arm64.tar.gz"
      sha256 "b1d7221b60a2055f82cf2df44c59dc049a322990659281bffe973607725a8ffc"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.51.4/meshagent-0.51.4-linux-x86_64.tar.gz"
      sha256 "0d4ca8f3e219ca7dbb8874fcb37611ac23d99914aee6ad3ce3ff1d48fbdd036e"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
