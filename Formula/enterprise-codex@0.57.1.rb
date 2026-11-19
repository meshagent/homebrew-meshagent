class EnterpriseCodexAT0571 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.57.1-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.1/enterprise-codex-0.57.1-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "290dee002e7318bcbb3b914650cf08da1309f9ee5a30cd485ac2ca3733716bf5"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.1/enterprise-codex-0.57.1-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "f80a5a96b5706821e967d30e04636d0952715d8a172f15f95ea036607f80edd4"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.1/enterprise-codex-0.57.1-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "fcec070c904a2f33f8a62b0c5c5f77c0f902c006743e0f6a2544d79fd9723df2"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.1/enterprise-codex-0.57.1-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "696df2d486b19212eb547fb58d4885ae4081ed77dc7150bf26f5c2c253f4c640"
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
