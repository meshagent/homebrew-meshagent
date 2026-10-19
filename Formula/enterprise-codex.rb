class EnterpriseCodex < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.54.2-meshagent.0.160.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.2/enterprise-codex-0.54.2-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "98a3fbba4446b7efdb69a47ecdd63a2ed94a5bcfac8262689f592e8cf9a0fbb0"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.2/enterprise-codex-0.54.2-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "f8df8f2cdc2a2fdc28206b7808b03cb290f0d69ea6afbbb07b290f499e428e22"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.2/enterprise-codex-0.54.2-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "bbd1e927ad57077ab0575aff6ef4edf5e8b46f06efeacae5804fba138b38c3da"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.2/enterprise-codex-0.54.2-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "a01497d58fc666afc61c0e711e77fef44f72504638fc5b5599e771e2f893c193"
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
