class EnterpriseCodexAT0540 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.54.0-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.0/enterprise-codex-0.54.0-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "9ba527af3cfe6dc41645160568049fc56f82b931b14e2f3e0f29a7e84f96b662"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.0/enterprise-codex-0.54.0-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "d163a9da6374b20b66bac64197f4c401adf12aeba3e5d50eb3e1ec2429fe90cf"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.0/enterprise-codex-0.54.0-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "4abc57281e4c1385572bd2d803216e0040db9c0e739563c0ded57ff3c0bbd2e2"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.0/enterprise-codex-0.54.0-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "f07ba1b3e43127ef4396fefdae0a2e863a37fc927e4c2c24245bcd87e19890a6"
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
