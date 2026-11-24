class EnterpriseCodex < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.58.1-meshagent.0.160.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.1/enterprise-codex-0.58.1-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "844f8403c8fb34972bdc4fbac966dac769967cd776d7051c1c04ac116a646a63"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.1/enterprise-codex-0.58.1-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "679d88bc91f59f3b8a0959f7065a9bf93e25ee1fc5ae99599e487a1333396af3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.1/enterprise-codex-0.58.1-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "18d38f63a03e2feede5459f4c85f6b1c8d16ab0bc259ad513672680c2029c189"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.1/enterprise-codex-0.58.1-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "8688f37b91c7393db54f3aa732897fa09a3fa62c0b43e8581e8efb7ce5c8c862"
    end
  end

  def install
    libexec.install "codex", "codex-code-mode-host"
    libexec.install "codex-resources" if OS.linux?
    bin.install_symlink libexec/"codex"
    pkgshare.install "LICENSE", "NOTICE"
  end

  test do
    assert_match "codex-cli 0.160.0-meshagent.1", shell_output("#{bin}/codex --version")
    system libexec/"codex-code-mode-host", "--help"
  end
end
