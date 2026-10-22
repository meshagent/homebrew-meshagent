class EnterpriseCodexAT0551 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.55.1-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.1/enterprise-codex-0.55.1-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "0a5d46ccca7d763b4235df611a69dc9ca5f4854863b4fb88ae141394f2823d75"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.1/enterprise-codex-0.55.1-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "6f087aa610556b436ed469dc56008dff7d5b5fab3387befcaac0a22b6a321282"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.1/enterprise-codex-0.55.1-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "e09f6560b2c10c378a0eda7a5bd3b31156ed0366451847999bc81d5586742811"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.55.1/enterprise-codex-0.55.1-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "904311e13d1598b41bb6d6b8ec0a3c73ac7bfd0edf0bf03a1564c108975bc10b"
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
