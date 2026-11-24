class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.58.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.58.1/meshagent-0.58.1-macos.tar.gz"
    sha256 "e2701876f02a1761e07574113e69175b0eed5e82e97f35dd8862eb03b8558dbd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.1/meshagent-0.58.1-linux-arm64.tar.gz"
      sha256 "4ab5b94900e0627bbf2571b2b42279508c0f023003f92d739e7ae673b9b0a677"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.58.1/meshagent-0.58.1-linux-x86_64.tar.gz"
      sha256 "aeef419e0040042943b34950adda23446d3dfd8c9371cb7a54bb83f849172ad7"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
