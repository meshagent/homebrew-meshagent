class EnterpriseCodexAT0561 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.56.1-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "edbd3f9c7110d4b0574d1ef5a55670993309f6cc331b500ef0542a341f19faff"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "ddac9fefa67267c166afc727f09ccb9bd0798a2ab055be4c9ed1f18a1750b2e3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "77a12eec5dff12ad9d9202c8cf2fb7e125a7e665247249af50f2e7fdb18b2603"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "cd8fe8799abeb8d00af0b4e750334f395ac1e5820d48503095c8777e528ef147"
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
