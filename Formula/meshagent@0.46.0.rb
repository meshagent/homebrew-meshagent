class MeshagentAT0460 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.46.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.46.0/meshagent-0.46.0-macos.tar.gz"
    sha256 "06e7cf343d2df7d5d8355bacc322b2601d97d6f6ac1fff4008094e7b2c6b8ddf"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.0/meshagent-0.46.0-linux-arm64.tar.gz"
      sha256 "5f6c754246238dac4e3f9743ccdf9c63be7688b82996a7de2bc95c8262d94444"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.46.0/meshagent-0.46.0-linux-x86_64.tar.gz"
      sha256 "37dda821cd279e509479a48a65ed847afc5ce9182dea8b19cfb4b984aa63a936"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
