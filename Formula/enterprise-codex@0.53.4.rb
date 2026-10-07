class EnterpriseCodexAT0534 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.53.4-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.4/enterprise-codex-0.53.4-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "2e06c86b0dc744c8852275ed791c698d531831ff82d487b7cc15f3594c1c75a3"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.4/enterprise-codex-0.53.4-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "ee72120d0b0799e8a42ceb5478465657eb6acb0e9a7b57ef5a2d6f2a707b9a74"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.4/enterprise-codex-0.53.4-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "54371f2f67cd1ddff5963998bae1799c334551b140f6a10dc7106bf117c708db"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.4/enterprise-codex-0.53.4-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "47c405e00d778a3bd29b42cca73e6ced2363c659dc19a517e6cf4511d90bf270"
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
