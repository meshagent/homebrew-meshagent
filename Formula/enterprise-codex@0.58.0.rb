class EnterpriseCodexAT0580 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.58.0-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.0/enterprise-codex-0.58.0-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "fc59dfa3df5e41464ddf8f1a20cdbb144b0aaf16f3f25a858d13cbeb98d702af"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.0/enterprise-codex-0.58.0-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "3b6022160f797d3b7c9a28c41c031ac0e015bf23d0d3eda9db60c338ad37b2b0"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.0/enterprise-codex-0.58.0-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "3e877225d3ea5bf581df1ed696386423f450d032630724f8075d064c57bd1373"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.0/enterprise-codex-0.58.0-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "bbb5292ef6d785fc420aabb1577a2e7bc8f58677f80bf1779ef1c0ff9b9c6976"
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
