class EnterpriseCodexAT0531 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.53.1-meshagent.0.153.4"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.1/enterprise-codex-0.53.1-meshagent.0.153.4-macos-arm64.tar.gz"
      sha256 "77b03df729dd521a7d7bf9d6210d93eed10a1d09db0789d6dfefd0763122ef44"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.1/enterprise-codex-0.53.1-meshagent.0.153.4-macos-x86_64.tar.gz"
      sha256 "77ecd33dedd0d11d50ea979b3316587778d0d380f8e490e09bd9de5deea58b37"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.1/enterprise-codex-0.53.1-meshagent.0.153.4-linux-arm64.tar.gz"
      sha256 "9e671d9826c9b9dc33fe6a101bb43a0e3a024e13092f76fa71a68de15cb61d58"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.1/enterprise-codex-0.53.1-meshagent.0.153.4-linux-x86_64.tar.gz"
      sha256 "88bbe0302f0af3e83ea28b3f85ab35a95e43e1113f7da499530996880890d519"
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
