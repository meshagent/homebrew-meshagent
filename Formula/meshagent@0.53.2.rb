class MeshagentAT0532 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.53.2"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.53.2/meshagent-0.53.2-macos.tar.gz"
    sha256 "ef40d5bcc17106af6af21ad355db1087ad638e12a5096f52ef1099e1eda6653e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.2/meshagent-0.53.2-linux-arm64.tar.gz"
      sha256 "ffbe14e0365fcf5c6e755f66cba22cfadc98b2a36d6ed35ea84bde64e6800fa3"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.53.2/meshagent-0.53.2-linux-x86_64.tar.gz"
      sha256 "62950776fc30bdd03a33d372f9dfbaed7084220cee41cd00dd16f7e674d97f8c"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
