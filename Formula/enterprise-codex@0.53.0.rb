class EnterpriseCodexAT0530 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.53.0-meshagent.0.153.4"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.0/enterprise-codex-0.53.0-meshagent.0.153.4-macos-arm64.tar.gz"
      sha256 "2babf05565a20218b7e385d6437d6dfd15f4fe9b2361553be4e031979858b16b"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.0/enterprise-codex-0.53.0-meshagent.0.153.4-macos-x86_64.tar.gz"
      sha256 "d3372ea170f9d0f4245149dd1ee82aa48c2ed3d77d97b74aa2fe61fccf1abde8"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.0/enterprise-codex-0.53.0-meshagent.0.153.4-linux-arm64.tar.gz"
      sha256 "70d23bec532512d0aae4cb2b841816f487de5474739b444c16296770a86ebfa0"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.0/enterprise-codex-0.53.0-meshagent.0.153.4-linux-x86_64.tar.gz"
      sha256 "1e3180c8a1aad4123db46dc8fdb0484c42c334c55e235275dd684d703e1d7e27"
    end
  end

  def install
    libexec.install "codex", "codex-code-mode-host"
    libexec.install "codex-resources" if OS.linux?
    bin.install_symlink libexec/"codex"
    pkgshare.install "LICENSE", "NOTICE"
  end

  test do
    assert_match "codex-cli 0.153.4-meshagent.1", shell_output("#{bin}/codex --version")
    system libexec/"codex-code-mode-host", "--help"
  end
end
