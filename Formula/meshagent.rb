class Meshagent < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.57.1"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.57.1/meshagent-0.57.1-macos.tar.gz"
    sha256 "d88f2bf8aa7a5a6a6e412d74b852a7c3de4d3c2c6378e9f1b726d95229bd5a03"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.57.1/meshagent-0.57.1-linux-arm64.tar.gz"
      sha256 "aeb84f77e11ca418dc38cd11c253667891cde9f026effb17127593752565971a"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.57.1/meshagent-0.57.1-linux-x86_64.tar.gz"
      sha256 "f45d2e335f90def61017d6ebaba53adafc75e86b20c7f9a2f4f56d73451b16a3"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
