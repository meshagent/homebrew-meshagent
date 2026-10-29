class EnterpriseCodex < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.56.2-meshagent.0.160.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.2/enterprise-codex-0.56.2-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "bdde33b1c0721d8627090f5b02d440357c76257a8af99b58064a155c52667a32"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.2/enterprise-codex-0.56.2-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "fccbb2cf1c378456205e9812e74aa624b9e087cade708abf236caea08770eab9"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.2/enterprise-codex-0.56.2-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "6c853cba6bb01f7d432186d054608672d1485447b2b50678cd501b9737246df4"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.2/enterprise-codex-0.56.2-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "947985352e3a8bee0475774917f9af0f784fd57a9b31a1ebe0f457d252b3bc24"
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
