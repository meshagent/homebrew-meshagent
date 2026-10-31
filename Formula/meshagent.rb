class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.57.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.57.0/meshagent-0.57.0-macos.tar.gz"
    sha256 "ebb64b75a80df995dd73e39a05dc4888f4f17668fa36eb359c3ad8b814dd745b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.57.0/meshagent-0.57.0-linux-arm64.tar.gz"
      sha256 "484dfc385f046112c774426f3547c0efd560ec3bc752f3b0365fc734d9c1bd5c"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.57.0/meshagent-0.57.0-linux-x86_64.tar.gz"
      sha256 "ab3223ad6218ea0ba732030790c4dcdaddd872af5717c5cbaf8192983b48cc90"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
