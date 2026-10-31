class EnterpriseCodexAT0570 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.57.0-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.0/enterprise-codex-0.57.0-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "5e8dadd10a54bb5b3449b265f925a29904bd94dfefaf86173b82b08f0ca87aed"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.0/enterprise-codex-0.57.0-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "20b86968623fb99f05b0fbbac032315edd4932ff7d9305952804c8a176a17588"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.0/enterprise-codex-0.57.0-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "bd610a326354b5c5b698b5439a75a2cedb328f1ef7315dfaa3a0c90e9d0bbca5"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.0/enterprise-codex-0.57.0-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "70b1340a79db252483722789dcef22db33687ce8e435b95189255cb37e8697d6"
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
