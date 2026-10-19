class EnterpriseCodexAT0541 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.54.1-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.1/enterprise-codex-0.54.1-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "e5e121db9399b1560843b8ee57f9451a116ae3ff21fe0ac76d50c392e9627fa4"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.1/enterprise-codex-0.54.1-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "adad804d808dcb9493981bbecf8082aec917e7fae00b3e5936d9a7ba40ca045a"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.1/enterprise-codex-0.54.1-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "07a4c55f647adfa45792564463052875f6abd0bbff0667cc2d44ccb91f6bcd62"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.54.1/enterprise-codex-0.54.1-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "046f7e259d6f9b3b36ac455d48f7a45cdaae265db28826f693436f4746609f47"
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
