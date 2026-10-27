class EnterpriseCodexAT0560 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.56.0-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.0/enterprise-codex-0.56.0-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "64123c5add1669155d1e9a62e2d55a8eab1e2f13793bdd89ed539448068e1bf0"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.0/enterprise-codex-0.56.0-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "6e6aac5b574dc3e0481b1da11e987631bbb545a193cf98b93ea9c2b2e66b0b29"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.0/enterprise-codex-0.56.0-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "e05884c7692179e871d697726685b03ef8d0a7fbf2cde868574ce4a92ec1edac"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.0/enterprise-codex-0.56.0-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "e857794f54d5599fb6bd58d27be154fdfbc7d7e9e44d63c1723e88f7c339a9d0"
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
