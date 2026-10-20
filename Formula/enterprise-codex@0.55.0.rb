class EnterpriseCodexAT0550 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.55.0-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.0/enterprise-codex-0.55.0-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "a3e77bbeff0b9c010696dffae9e8b3269533c5500a7a38c4bbf195e004a0d9fd"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.0/enterprise-codex-0.55.0-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "2ef0ad7b4fcc80a65161329d9f2d65817a18e70af363117a1bc6308d62c1d6f2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.0/enterprise-codex-0.55.0-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "be9c4a55c37dfa7fd52cc823b3fbe893c28c1af752d361d8ad7fa88928446504"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.0/enterprise-codex-0.55.0-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "f780110eab822f27b2a26d54512b4e8e7727f0f7b4798b125b3c19c48023d935"
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
