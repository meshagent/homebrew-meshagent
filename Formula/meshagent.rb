class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.57.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.57.2/meshagent-0.57.2-macos.tar.gz"
    sha256 "9b820fa73bbd5c3e727b9c7b6bd66cb65740411eaaa82e3260ebc57ee41c9102"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.57.2/meshagent-0.57.2-linux-arm64.tar.gz"
      sha256 "f1d4176363704702e3c504b50125c8530952b53f736d86d51d034870267462b3"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.57.2/meshagent-0.57.2-linux-x86_64.tar.gz"
      sha256 "a15850827dbff2e04b557696855ffb67a9a8916975b63bdd854149f2488b28fe"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
